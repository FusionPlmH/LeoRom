.class public Lcom/samsung/android/settings/deviceinfo/PreloadedApps;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreloadedApps.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOptionMenuText:[Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mPreloadedPackageInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->listUpSystemApps()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->listUpPreloadedApps()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private addDescriptionForRemovingPreloadApp()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "/system/etc/removable_preload.txt"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    if-eqz v4, :cond_1

    const-string v4, "name="

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "name=\'"

    const-string v6, ""

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "\'"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :goto_1
    nop

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :cond_2
    :goto_3
    goto :goto_8

    :catchall_0
    move-exception v2

    goto/16 :goto_a

    :catch_2
    move-exception v4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_3
    :goto_4
    nop

    :goto_5
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_4
    move-exception v4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :cond_4
    :goto_6
    nop

    :goto_7
    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    return-object v2

    :cond_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, ""

    :try_start_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_6

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    goto :goto_9

    :cond_6
    nop

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    goto :goto_9

    :catch_6
    move-exception v7

    goto :goto_9

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    return-object v0

    :cond_9
    return-object v2

    :goto_a
    nop

    if-eqz v3, :cond_a

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_b

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :cond_a
    :goto_b
    nop

    :goto_c
    if-eqz v1, :cond_b

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_d

    :catch_8
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_b
    :goto_d
    throw v2
.end method

.method private addPreloadInstalledPackages()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/sec_efs/preloadinstalled.lst"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PreloadedApps"

    const-string v5, "There is no file : /efs/sec_efs/preloadinstalled.lst"

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    instance-of v6, v4, Ljava/util/HashSet;

    if-eqz v6, :cond_1

    move-object v6, v4

    check-cast v6, Ljava/util/HashSet;

    move-object v5, v6

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v7, :cond_2

    nop

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v6

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    goto :goto_6

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :cond_5
    :goto_6
    return-object v1

    :goto_7
    if-eqz v0, :cond_6

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    :catch_6
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    :catch_7
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_9
    throw v1
.end method

.method private listUpPreloadedApps()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->addPreloadInstalledPackages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->addDescriptionForRemovingPreloadApp()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    const-string v6, ""

    :try_start_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    nop

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->setList(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method private listUpSystemApps()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    if-eqz v3, :cond_2

    nop

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPreloadedPackageInfo:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->setList(Ljava/util/List;)V

    return-void
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/IconResizer;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070585

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private setList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$2;-><init>(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startAsyncTask(Z)V
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;-><init>(Lcom/samsung/android/settings/deviceinfo/PreloadedApps;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120e89

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120e7e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mOptionMenuText:[Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->setHasOptionsMenu(Z)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->startAsyncTask(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mOptionMenuText:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const v2, 0x44b59fe

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x44b59fe

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mOptionMenuText:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mOptionMenuText:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->startAsyncTask(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mOptionMenuText:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->mPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/PreloadedApps;->startAsyncTask(Z)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
