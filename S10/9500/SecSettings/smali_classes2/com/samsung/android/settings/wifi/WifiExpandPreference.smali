.class public Lcom/samsung/android/settings/wifi/WifiExpandPreference;
.super Landroid/support/v7/preference/Preference;
.source "WifiExpandPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDividerArrow:Landroid/widget/ImageView;

.field private mDividerTextView:Landroid/widget/TextView;

.field private mHiddenPrefNum:I

.field private mIsOpen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mIsOpen:Z

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mHiddenPrefNum:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mIsOpen:Z

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mHiddenPrefNum:I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mIsOpen:Z

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mHiddenPrefNum:I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mIsOpen:Z

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mHiddenPrefNum:I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0d02b8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a06df

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mDividerTextView:Landroid/widget/TextView;

    const v0, 0x7f0a06de

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mDividerArrow:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mIsOpen:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mHiddenPrefNum:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->setDividerState(Ljava/lang/Boolean;I)V

    return-void
.end method

.method public setDividerState(Ljava/lang/Boolean;I)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mIsOpen:Z

    iput p2, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mHiddenPrefNum:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mDividerTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mDividerArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mIsOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121f39

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121f37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mDividerTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mDividerArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mIsOpen:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/high16 v2, 0x43340000    # 180.0f

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    nop

    return-void

    :cond_2
    return-void
.end method

.method public setOpenState(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mIsOpen:Z

    iput p2, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mHiddenPrefNum:I

    return-void
.end method
