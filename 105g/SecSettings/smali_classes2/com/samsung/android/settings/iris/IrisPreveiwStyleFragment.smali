.class public Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IrisPreveiwStyleFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;
    }
.end annotation


# instance fields
.field mGridView:Landroid/widget/GridView;

.field private mIrisPreviewAdapter:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

.field public final mIrisPreviewImages:[I

.field private mPreviewImgResIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mStyleNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewImages:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0804ae
        0x7f0804af
        0x7f0804b0
        0x7f0804b1
        0x7f0804b2
        0x7f0804b3
        0x7f0804b4
        0x7f0804b5
        0x7f0804b6
        0x7f0804b7
        0x7f0804b8
        0x7f0804b9
        0x7f0804ba
        0x7f0804bb
        0x7f0804bc
        0x7f0804bd
        0x7f0804be
        0x7f0804bf
    .end array-data
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableFromAssets(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "iris_mask/Iris_mask.qmg"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    invoke-static {v2, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_0
    :goto_1
    return-object v0

    :goto_2
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    throw v1
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/iris/IrisIconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/iris/IrisIconResizer;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0702c7

    const v2, 0x7f0702c5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/iris/IrisIconResizer;->setIconSize(II)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/iris/IrisIconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private setContent()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewImages:[I

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewImages:[I

    array-length v4, v4

    if-ne v0, v4, :cond_2

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    move-object v4, v5

    invoke-static {v4}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getDrawableFromAssets(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v3, v5

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mPreviewImgResIdList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewImages:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mPreviewImgResIdList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewAdapter:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private viewInit()V
    .locals 4

    const-string v0, "IrisPreveiwStyleFragment"

    const-string v1, "viewInit"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0356

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mPreviewImgResIdList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mPreviewImgResIdList:Ljava/util/ArrayList;

    const v3, 0x7f0d01ce

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;-><init>(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewAdapter:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewAdapter:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "iris_preview_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2084

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f120bfd

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d01cf

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x208b

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "themestore://MainPage?contentsType=themes"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x14000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getMetricsCategory()I

    move-result v0

    const/16 v2, 0x20a0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->viewInit()V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->setContent()V

    return-void
.end method
