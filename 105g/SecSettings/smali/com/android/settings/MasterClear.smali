.class public Lcom/android/settings/MasterClear;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "MasterClear.java"


# static fields
.field static final CREDENTIAL_CONFIRM_REQUEST:I = 0x38

.field static final KEYGUARD_REQUEST:I = 0x37

.field private static final mAppLabelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private mAllPreloadApps:Landroid/widget/RadioButton;

.field private mAllPreloadAppsLayout:Landroid/widget/LinearLayout;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:I

.field private mCanEraseExternalOnFuseSystem:Z

.field private mContentView:Landroid/view/View;

.field private mDescriptionView:Landroid/widget/TextView;

.field mEsimStorage:Landroid/widget/CheckBox;

.field private mEsimStorageContainer:Landroid/view/View;

.field private mExceptRemovedApps:Landroid/widget/RadioButton;

.field private mExceptRemovedAppsLayout:Landroid/widget/LinearLayout;

.field mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field mInitiateButton:Landroid/widget/Button;

.field protected final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mPinConfirmed:Z

.field private mPreloadAppsRestoreDescription:Landroid/widget/TextView;

.field private mPreloadAppsRestoreOption:I

.field private mPreloadAppsRestoreOptionLayout:Landroid/widget/LinearLayout;

.field private mResetBatteryLevelCheckDialog:Landroid/app/AlertDialog;

.field mScrollView:Landroid/widget/ScrollView;

.field private mStrSdVolumeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/MasterClear$7;

    invoke-direct {v0}, Lcom/android/settings/MasterClear$7;-><init>()V

    sput-object v0, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/MasterClear;->mStrSdVolumeId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/MasterClear;->mResetBatteryLevelCheckDialog:Landroid/app/AlertDialog;

    iput v0, p0, Lcom/android/settings/MasterClear;->mBatteryLevel:I

    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/MasterClear$11;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$11;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/MasterClear;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/MasterClear;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/MasterClear;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/MasterClear;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showResetBatteryCheckDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClear;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/MasterClear;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->setPreloadAppsResetOption(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/MasterClear;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->checkSmartSwitchPackage()Z

    move-result v0

    return v0
.end method

.method private addDescriptionForRemovingPreloadApp()V
    .locals 24

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v2, 0x7f0a04b7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    iget-object v0, v1, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f0a0663

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v0, 0x0

    move-object v7, v0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/etc/removable_preload.txt"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v6, v0

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v0

    :cond_1
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    if-eqz v0, :cond_2

    const-string v0, "name="

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "name=\'"

    const-string v9, ""

    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "\'"

    const-string v10, ""

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :goto_1
    nop

    :goto_2
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v8, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :cond_3
    :goto_3
    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v23, v4

    goto/16 :goto_10

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_4

    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v8, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_4
    :goto_4
    nop

    :goto_5
    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_4
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v7, :cond_5

    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v8, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :cond_5
    :goto_6
    nop

    :goto_7
    if-eqz v6, :cond_3

    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :goto_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v8, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-string v0, "layout_inflater"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    const/4 v13, 0x0

    move v0, v13

    :goto_9
    move v14, v0

    if-ge v14, v9, :cond_d

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v15, v0

    :try_start_9
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v15, v0, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v15, v13, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    move-object v1, v13

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_6

    move-object/from16 v17, v1

    const/4 v1, 0x1

    and-int/2addr v13, v1

    if-eqz v13, :cond_7

    nop

    move-object/from16 v23, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_d

    :cond_7
    nop

    nop

    const/4 v13, 0x0

    move-object/from16 v18, v6

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v15, v1, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v6, 0x7f0d00a5

    const/4 v13, 0x0

    invoke-virtual {v10, v6, v3, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v13, 0x1020016

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v19, v7

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_8

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v13, 0x7f0704c0

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v13, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v13, 0x1020006

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v13, "\\."

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    move-object/from16 v20, v0

    array-length v0, v7

    move-object/from16 v21, v1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_b

    move/from16 v22, v0

    aget-object v0, v7, v1

    move-object/from16 v23, v4

    const-string v4, "sec"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "samsung"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_b

    :cond_9
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v22

    move-object/from16 v4, v23

    goto :goto_a

    :cond_a
    :goto_b
    const/4 v13, 0x1

    goto :goto_c

    :cond_b
    move-object/from16 v23, v4

    :goto_c
    if-eqz v13, :cond_c

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_c
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :catch_6
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    nop

    :goto_d
    add-int/lit8 v0, v14, 0x1

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v4, v23

    move-object/from16 v1, p0

    const/4 v13, 0x0

    goto/16 :goto_9

    :cond_d
    move-object/from16 v23, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    sget-object v0, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v0, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v3, :cond_10

    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_f
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_10
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v3, :cond_11

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_11
    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v23, v4

    move-object v1, v0

    :goto_10
    if-eqz v7, :cond_12

    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_11

    :catch_7
    move-exception v0

    move-object v4, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    :cond_12
    :goto_11
    nop

    :goto_12
    if-eqz v6, :cond_13

    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_13

    :catch_8
    move-exception v0

    move-object v4, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_13
    :goto_13
    throw v1
.end method

.method private addSmartSwitchTipView()V
    .locals 7

    new-instance v0, Lcom/android/settings/MasterClear$8;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$8;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1218bd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const v4, 0x7f120e48

    invoke-virtual {p0, v4, v2}, Lcom/android/settings/MasterClear;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4, v0, v5, v6, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mDescriptionView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private checkReactivationLock()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/MasterClear;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    sget-object v1, Lcom/android/settings/MasterClear;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "MasterClear"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LMM[getReqiredAuthFlag] in Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private checkSmartSwitchPackage()Z
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.android.easyMover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "EXTERNAL_BNR"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v2, "EXTERNAL_BNR"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const-string v2, "flowId"

    const/16 v3, 0x2333

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "callerMetric"

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "MasterClear"

    const-string v2, "not found activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    return-void
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/android/settings/MasterClear;Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private loadAccountList(Landroid/os/UserManager;)V
    .locals 32

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v2, 0x7f0a001b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, v1, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f0a001a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v0, "layout_inflater"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    move v11, v0

    const/4 v0, 0x0

    :goto_0
    move v12, v0

    if-ge v12, v7, :cond_d

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/UserInfo;

    iget v15, v14, Landroid/content/pm/UserInfo;->id:I

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v15}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v16, v0

    invoke-static {v15}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    :goto_1
    move-object/from16 v17, v6

    move/from16 v29, v7

    move-object/from16 v18, v8

    goto/16 :goto_d

    :cond_0
    invoke-virtual {v8, v15}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v10

    array-length v13, v10

    if-nez v13, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v11, v13

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    move-object/from16 v17, v6

    invoke-virtual {v0, v15}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v6

    move-object/from16 v18, v8

    array-length v8, v6

    move/from16 v19, v11

    const/4 v11, 0x1

    if-le v7, v11, :cond_3

    invoke-static {v9, v3}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v11, 0x1020016

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v11, v20

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v20

    if-eqz v20, :cond_2

    const v20, 0x7f12049e

    :goto_2
    move-object/from16 v21, v14

    move/from16 v14, v20

    goto :goto_3

    :cond_2
    const v20, 0x7f12049d

    goto :goto_2

    :goto_3
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_3
    move-object/from16 v21, v14

    :goto_4
    const/4 v0, 0x0

    :goto_5
    move v11, v0

    if-ge v11, v13, :cond_a

    aget-object v14, v10, v11

    const/4 v0, 0x0

    const/16 v20, 0x0

    :goto_6
    move/from16 v22, v20

    move-object/from16 v23, v0

    move/from16 v0, v22

    if-ge v0, v8, :cond_5

    move/from16 v24, v8

    iget-object v8, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v25, v10

    aget-object v10, v6, v0

    iget-object v10, v10, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    aget-object v8, v6, v0

    goto :goto_7

    :cond_4
    add-int/lit8 v20, v0, 0x1

    move-object/from16 v0, v23

    move/from16 v8, v24

    move-object/from16 v10, v25

    goto :goto_6

    :cond_5
    move/from16 v24, v8

    move-object/from16 v25, v10

    move-object/from16 v8, v23

    :goto_7
    if-nez v8, :cond_6

    const-string v0, "MasterClear"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v6

    const-string v6, "No descriptor for account name="

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " type="

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move/from16 v29, v7

    move/from16 v28, v13

    move-object/from16 v10, v16

    goto/16 :goto_c

    :cond_6
    move-object/from16 v26, v6

    const/4 v0, 0x0

    move-object v6, v0

    :try_start_0
    iget v0, v8, Landroid/accounts/AuthenticatorDescription;->iconId:I

    if-eqz v0, :cond_8

    iget-object v0, v8, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v27, v6

    move-object/from16 v10, v16

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v6, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move/from16 v28, v13

    :try_start_2
    iget-object v13, v8, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    iget v13, v8, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v29, v7

    const/4 v7, 0x1

    :try_start_3
    invoke-virtual {v6, v13, v7}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v6, v13, v10}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v6, v13

    goto :goto_8

    :cond_7
    move/from16 v29, v7

    const/4 v7, 0x1

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    iget v7, v8, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v13, v7, v10}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v7
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v7

    move-object v6, v0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move/from16 v29, v7

    goto :goto_9

    :catch_3
    move-exception v0

    move/from16 v29, v7

    goto :goto_a

    :catch_4
    move-exception v0

    move/from16 v29, v7

    move/from16 v28, v13

    goto :goto_9

    :catch_5
    move-exception v0

    move/from16 v29, v7

    move/from16 v28, v13

    goto :goto_a

    :cond_8
    move-object/from16 v27, v6

    move/from16 v29, v7

    move/from16 v28, v13

    move-object/from16 v10, v16

    :goto_8
    move-object/from16 v27, v6

    goto :goto_b

    :catch_6
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v29, v7

    move/from16 v28, v13

    move-object/from16 v10, v16

    :goto_9
    const-string v6, "MasterClear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid icon id for account type "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :catch_7
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v29, v7

    move/from16 v28, v13

    move-object/from16 v10, v16

    :goto_a
    const-string v6, "MasterClear"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad package name for account type "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_b
    if-nez v27, :cond_9

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    :cond_9
    move-object/from16 v0, v27

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070585

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v7, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v13, 0x7f0d00a5

    invoke-virtual {v9, v13, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    const v7, 0x1020006

    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v7, 0x1020016

    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/widget/TextView;

    move-object/from16 v31, v0

    iget-object v0, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_c
    add-int/lit8 v0, v11, 0x1

    move-object/from16 v16, v10

    move/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v6, v26

    move/from16 v13, v28

    move/from16 v7, v29

    goto/16 :goto_5

    :cond_a
    move-object/from16 v26, v6

    move/from16 v29, v7

    move/from16 v24, v8

    move-object/from16 v25, v10

    move/from16 v28, v13

    move-object/from16 v10, v16

    if-nez v15, :cond_b

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v0

    const v6, 0x7f070585

    const v7, 0x7f0d00a5

    invoke-virtual {v0, v3, v7, v6}, Lcom/samsung/android/app/SemDualAppManager;->addDualAppAccounts(Landroid/widget/LinearLayout;II)V

    :cond_b
    move/from16 v11, v19

    goto :goto_d

    :cond_c
    move-object/from16 v17, v6

    move/from16 v29, v7

    move-object/from16 v18, v8

    :goto_d
    add-int/lit8 v0, v12, 0x1

    move-object/from16 v6, v17

    move-object/from16 v8, v18

    move/from16 v7, v29

    goto/16 :goto_0

    :cond_d
    move-object/from16 v17, v6

    move/from16 v29, v7

    move-object/from16 v18, v8

    if-lez v11, :cond_e

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_e

    :cond_e
    const/4 v6, 0x0

    :goto_e
    iget-object v0, v1, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f0a05aa

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v7

    sub-int v7, v7, v29

    if-lez v7, :cond_f

    const/16 v30, 0x1

    goto :goto_f

    :cond_f
    move/from16 v30, v6

    :goto_f
    move/from16 v7, v30

    if-eqz v7, :cond_10

    goto :goto_10

    :cond_10
    const/16 v10, 0x8

    move v6, v10

    :goto_10
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f121570

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private setPreloadAppsResetOption(I)V
    .locals 3

    iput p1, p0, Lcom/android/settings/MasterClear;->mPreloadAppsRestoreOption:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mAllPreloadApps:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mExceptRemovedApps:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mPreloadAppsRestoreDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mAllPreloadApps:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExceptRemovedApps:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mPreloadAppsRestoreDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12111e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showResetBatteryCheckDialog()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mResetBatteryLevelCheckDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mResetBatteryLevelCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mResetBatteryLevelCheckDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/MasterClear$9;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$9;-><init>(Lcom/android/settings/MasterClear;)V

    new-instance v1, Lcom/android/settings/MasterClear$10;

    invoke-direct {v1, p0}, Lcom/android/settings/MasterClear$10;-><init>(Lcom/android/settings/MasterClear;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f1214c8

    invoke-virtual {p0, v4}, Lcom/android/settings/MasterClear;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f120e42

    invoke-virtual {p0, v4}, Lcom/android/settings/MasterClear;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1213fa

    invoke-virtual {p0, v3}, Lcom/android/settings/MasterClear;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MasterClear;->mResetBatteryLevelCheckDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mResetBatteryLevelCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method establishInitialState()V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0403

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a02cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a02ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a02cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mEsimStorageContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a02cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mEsimStorage:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v1, 0x7f0a04b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->semSetRoundedCornerColor(II)V

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->isExtStorageEncrypted()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v4, Lcom/android/settings/MasterClear$2;

    invoke-direct {v4, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0a02d0

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0a0070

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u2022 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120e3d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\u2022 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120e34

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\u2022 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120e35

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\u2022 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120e38

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\u2022 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120e3b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\u2022 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120e3a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\u2022 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120e3c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120e37

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v4

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move-object v7, v4

    check-cast v7, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v8, 0x7f0a0071

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f12134d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v7, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    xor-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->showWipeEuicc()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->showWipeEuiccCheckbox()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0a02cd

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f120849

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/MasterClear;->mEsimStorageContainer:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/MasterClear;->mEsimStorageContainer:Landroid/view/View;

    new-instance v6, Lcom/android/settings/MasterClear$3;

    invoke-direct {v6, p0}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0a006f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f0a0565

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/MasterClear;->mEsimStorage:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v5, "user"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-direct {p0, v2}, Lcom/android/settings/MasterClear;->loadAccountList(Landroid/os/UserManager;)V

    const-string v5, "ATT"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "AIO"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_6
    if-eqz v0, :cond_9

    iget-object v5, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f0a02d2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f12084e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f0a02d1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f12084d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "storage"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/VolumeInfo;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v11

    if-eqz v11, :cond_7

    iput-boolean v4, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/MasterClear;->mStrSdVolumeId:Ljava/lang/String;

    goto :goto_5

    :cond_7
    goto :goto_4

    :cond_8
    :goto_5
    iget-boolean v9, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v10, Lcom/android/settings/MasterClear$4;

    invoke-direct {v10, p0}, Lcom/android/settings/MasterClear$4;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const-string v5, "ro.config.rm_preload_enabled"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_a

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->addDescriptionForRemovingPreloadApp()V

    :cond_a
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_SupportPreInstallerSkipUserDeletedApp"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0a05de

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/MasterClear;->mPreloadAppsRestoreOptionLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0a006c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/MasterClear;->mAllPreloadAppsLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0a02e4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/MasterClear;->mExceptRemovedAppsLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0a006b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/settings/MasterClear;->mAllPreloadApps:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0a02e3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/settings/MasterClear;->mExceptRemovedApps:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0a05df

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/MasterClear;->mPreloadAppsRestoreDescription:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mPreloadAppsRestoreOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/settings/MasterClear;->setPreloadAppsResetOption(I)V

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mAllPreloadAppsLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/settings/MasterClear$5;

    invoke-direct {v4, p0}, Lcom/android/settings/MasterClear$5;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mExceptRemovedAppsLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/settings/MasterClear$6;

    invoke-direct {v4, p0}, Lcom/android/settings/MasterClear$6;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0a04b5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/view/View;->semSetRoundedCorners(I)V

    nop

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    invoke-direct {p0, v4, v1}, Lcom/android/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method getAccountConfirmationIntent()Landroid/content/Intent;
    .locals 13

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120093

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120084

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120083

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v7, v6

    if-lez v7, :cond_2

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_1

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    return-object v7

    :cond_1
    const-string v10, "MasterClear"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to resolve Activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v7, "MasterClear"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " accounts installed!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v5

    :cond_3
    :goto_1
    const-string v4, "MasterClear"

    const-string v6, "Resources not set for account confirmation."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x42

    return v0
.end method

.method hasReachedBottom(Landroid/widget/ScrollView;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    if-gtz v3, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0
.end method

.method protected isEuiccEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "euicc"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    return v1
.end method

.method isValidRequestCode(I)Z
    .locals 1

    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    const/16 v0, 0x38

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isValidRequestCode(II)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x38

    if-ne p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/MasterClear;->onActivityResultInternal(IILandroid/content/Intent;)V

    return-void
.end method

.method onActivityResultInternal(IILandroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClear;->isValidRequestCode(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/MasterClear;->isValidRequestCode(II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/settings/MasterClear;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " blocked by isValidRequestCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0x37

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    const/16 v1, 0x38

    if-eq v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getAccountConfirmationIntent()Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->showAccountCredentialConfirmation(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f121570

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/settings/Utils;->isDemoUser(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    const v5, 0x7f0d00a7

    invoke-virtual {p1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    return-object v4

    :cond_2
    if-eqz v1, :cond_3

    new-instance v4, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    const-string v5, "no_factory_reset"

    invoke-virtual {v4, v5, v1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/-$$Lambda$MasterClear$Z9cDw51Fmk6mKl61MZqDIXg0-34;

    invoke-direct {v5, p0}, Lcom/android/settings/-$$Lambda$MasterClear$Z9cDw51Fmk6mKl61MZqDIXg0-34;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v4

    :cond_3
    const v5, 0x7f0d00a4

    invoke-virtual {p1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v5, 0x7f0a0868

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/MasterClear;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    const-string v4, "MasterClear"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-class v6, Lcom/android/settings/MasterClear;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "onCreateView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->addSmartSwitchTipView()V

    iget-object v4, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    return-object v4
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "MasterClear"

    const-string v2, "no BatteryReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->checkReactivationLock()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_my_mobile"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_my_mobile"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v4, "isFactoryResetAllowed"

    invoke-static {v0, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method showAccountCredentialConfirmation(Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x38

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method showFinalConfirmation()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "erase_sd"

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "erase_esim"

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mEsimStorage:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "erase_sd_id"

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mStrSdVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "can_erase_sd_on_fuse"

    iget-boolean v2, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_SupportPreInstallerSkipUserDeletedApp"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "preload_apps_restore_option"

    iget v2, p0, Lcom/android/settings/MasterClear;->mPreloadAppsRestoreOption:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f121570

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method showWipeEuicc()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->isEuiccEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "euicc_provisioned"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "development_settings_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method showWipeEuiccCheckbox()Z
    .locals 2

    const-string v0, "masterclear.allow_retain_esim_profiles_after_fdr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
