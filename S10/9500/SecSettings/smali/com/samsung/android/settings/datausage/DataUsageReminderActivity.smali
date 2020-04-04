.class public Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DataUsageReminderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;,
        Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;,
        Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;

.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

.field private mContext:Landroid/content/Context;

.field private mDescView:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mMobileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private mUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWlanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mMobileList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mWlanList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mWlanList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mMobileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private applyExtendedAppBar()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v2, 0x3ec4b5dd    # 0.3842f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    if-lez v2, :cond_4

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    const/16 v4, 0x258

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v5, 0x1e0

    if-ge v3, v5, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ge v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    if-lt v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ge v3, v4, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v3, v0}, Landroid/support/design/widget/AppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f12062b

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->setTitle(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04aa

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0584

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->finish()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.NETWORKMANAGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "is_from_datausage_notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    nop

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0162

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "uids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidList:Ljava/util/ArrayList;

    const-string/jumbo v1, "wlan"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mWlanList:Ljava/util/ArrayList;

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mMobileList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mWlanList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mMobileList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mListView:Landroid/widget/ListView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mListView:Landroid/widget/ListView;

    const v3, 0x7f0601b1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->semSetRoundedCornerColor(II)V

    const v1, 0x7f0a0211

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mDescView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    new-instance v2, Lcom/android/settingslib/net/UidDetailProvider;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    new-instance v2, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;-><init>(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;Landroid/os/UserManager;Lcom/android/settingslib/net/UidDetailProvider;I)V

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAdapter:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAdapter:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAdapter:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->bindStats()V

    const v2, 0x7f0a0197

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    const v2, 0x7f0a0086

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mDescView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f120629

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "totalBytes"

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a04aa

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0584

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a001c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->applyExtendedAppBar()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "DataUsageReminderActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extra Error mUidList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mWlanList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mWlanList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mMobileList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mMobileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->finish()V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settingslib/net/UidDetailProvider;->clearCache()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setTitle(I)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
