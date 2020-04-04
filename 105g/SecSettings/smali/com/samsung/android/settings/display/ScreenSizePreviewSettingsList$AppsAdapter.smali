.class Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScreenSizePreviewSettingsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->loadTiles()V

    return-void
.end method

.method private createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d025e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private loadTiles()V
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->access$402(Lcom/android/settings/dashboard/DashboardFeatureProvider;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->access$400()Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSeperateLockAndSecurity()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->access$500()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->access$600()[Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v3, v4

    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_8

    move-object v6, v5

    move v5, v4

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    move-object v7, v6

    move v6, v4

    :goto_3
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v8}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v8

    if-ge v6, v8, :cond_5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v8, v6}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v8

    iget-object v9, v8, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v10, "com.android.settings.tileid"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    aget-object v9, v2, v3

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    if-eqz v12, :cond_1

    iget-object v12, v8, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_1
    iget-object v12, v8, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    if-eqz v12, :cond_2

    iget-object v12, v8, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_2
    iget-object v12, v8, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v12, :cond_3

    iget-object v12, v8, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    :cond_3
    new-instance v12, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v13, v8, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-direct {v12, v9, v10, v13, v11}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    move-object v6, v7

    if-eqz v6, :cond_6

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_5
    move-object v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const-string v0, "SettingsListView"

    const-string v1, "getView():"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1020010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x1020006

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a085d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mTitle:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->access$000()I

    move-result v7

    int-to-float v7, v7

    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->access$100()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual {v1, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->access$200()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->access$300()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
