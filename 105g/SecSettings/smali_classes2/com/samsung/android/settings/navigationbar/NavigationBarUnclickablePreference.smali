.class public Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;
.super Lcom/samsung/android/settings/widget/SecUnclickablePreference;
.source "NavigationBarUnclickablePreference.java"


# instance fields
.field private mMaxFontSizeIndex:I

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mMaxFontSizeIndex:I

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mTextSize:I

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0d029b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a086b

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mTextSize:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mMaxFontSizeIndex:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mMaxFontSizeIndex:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontScale(Landroid/content/Context;I)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mTextSize:I

    int-to-float v3, v3

    const/4 v4, 0x1

    mul-float v5, v3, v2

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public setMaxTitleFontSizeIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mMaxFontSizeIndex:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mTextSize:I

    return-void
.end method
