.class Lcom/samsung/android/settings/display/AppListView$AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/AppListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/samsung/android/settings/display/AppListView$ActivityEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIconResId:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput p4, p0, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->mIconResId:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->loadApps()V

    return-void
.end method

.method private createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01e2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private loadApps()V
    .locals 8

    const-string v0, "font"

    const-string v1, "loadApps():"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/display/AppListView;->access$300()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/display/AppListView;->access$300()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v5, v6, v7, v3}, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const-string v0, "font"

    const-string v1, "getView():"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f0a008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a008b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;

    iget-object v3, v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;

    iget-object v3, v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;

    iget-object v3, v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;

    iget-object v3, v3, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v3, 0x2

    invoke-static {}, Lcom/samsung/android/settings/display/AppListView;->access$000()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/samsung/android/settings/display/AppListView;->access$100()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lcom/samsung/android/settings/display/AppListView;->access$200()Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/AppListView$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
