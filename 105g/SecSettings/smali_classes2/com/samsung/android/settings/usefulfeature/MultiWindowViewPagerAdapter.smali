.class public Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MultiWindowViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mAnimationView:Landroid/widget/ImageView;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->setDescriptions()V

    return-void
.end method

.method private setDescriptions()V
    .locals 6

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    invoke-direct {v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;-><init>()V

    move-object v0, v2

    const-string v2, "split_screen"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->key:Ljava/lang/String;

    const v2, 0x7f120ecc

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->title:I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    const v3, 0x7f120ed2

    const v4, 0x7f120ed1

    if-eqz v2, :cond_0

    const v2, 0x7f08051d

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    const v2, 0x7f08051c

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f120ed3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f120ed4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f08051a

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    goto :goto_0

    :cond_2
    const v2, 0x7f080519

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.software.freeform_window_management"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    invoke-direct {v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;-><init>()V

    move-object v0, v2

    const-string v2, "pop_up_gesture"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->key:Ljava/lang/String;

    const v2, 0x7f120ed0

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->title:I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f080516

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    const v2, 0x7f080513

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    goto :goto_2

    :cond_4
    const v2, 0x7f080510

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    const v3, 0x7f120ecf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    move-object v1, p3

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v2, v1, v2

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0211

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a0236

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0233

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a007f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mAnimationView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int p2, v3, p2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget v3, v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->title:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v3, :cond_1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget v3, v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->title:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->summary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget v3, v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mAnimationView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->animation:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$Description;->key:Ljava/lang/String;

    const-string v4, "pop_up_gesture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->mAnimationView:Landroid/widget/ImageView;

    new-instance v6, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$1;

    invoke-direct {v6, p0, v3}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter$1;-><init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_2
    move-object v3, p1

    check-cast v3, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0, v5}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
