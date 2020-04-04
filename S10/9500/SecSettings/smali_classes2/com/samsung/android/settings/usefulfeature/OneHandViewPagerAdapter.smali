.class public Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "OneHandViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;",
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

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->setDescriptions()V

    return-void
.end method

.method private setDescriptions()V
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    invoke-direct {v2}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;-><init>()V

    move-object v0, v2

    const-string v2, "gesture_type"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    if-eqz v1, :cond_0

    const v2, 0x7f080579

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->animation:I

    goto :goto_0

    :cond_0
    const v2, 0x7f080574

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->animation:I

    :goto_0
    const v2, 0x7f121033

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->summary:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    invoke-direct {v2}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;-><init>()V

    move-object v0, v2

    const-string v2, "button_type"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    if-eqz v1, :cond_1

    const v2, 0x7f121034

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->summary:I

    const v2, 0x7f080572

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->animation:I

    goto :goto_1

    :cond_1
    const v2, 0x7f121035

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->summary:I

    const v2, 0x7f080571

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->animation:I

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

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
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0204

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a022a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int p2, v3, p2

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->animation:I

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    iget v3, v3, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->animation:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    const-string v4, "gesture_type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_2

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$1;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$1;-><init>(Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
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
