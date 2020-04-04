.class public Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;
.super Lcom/android/settings/applications/LayoutPreference;
.source "NavigationBarButtonOrderPreference.java"


# instance fields
.field private mNormalMode:Landroid/widget/RadioButton;

.field private mNormalModeContainer:Landroid/widget/LinearLayout;

.field private mNormalModeImg:Landroid/widget/ImageView;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mReverseMode:Landroid/widget/RadioButton;

.field private mReverseModeContainer:Landroid/widget/LinearLayout;

.field private mReverseModeImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalMode:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseMode:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private getReverseButtonOrder()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_key_order"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/applications/LayoutPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->getReverseButtonOrder()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    const v1, 0x7f0a0571

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    const v1, 0x7f0a0681

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalMode:Landroid/widget/RadioButton;

    if-nez v1, :cond_2

    const v1, 0x7f0a0570

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalMode:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalMode:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseMode:Landroid/widget/RadioButton;

    if-nez v1, :cond_3

    const v1, 0x7f0a0680

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseMode:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseMode:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    const v1, 0x7f0a0572

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    if-nez v1, :cond_5

    const v1, 0x7f0a0682

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalMode:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_6

    move v4, v3

    goto :goto_0

    :cond_6
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseMode:Landroid/widget/RadioButton;

    if-ne v0, v3, :cond_7

    move v2, v3

    nop

    :cond_7
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->setImgResource()V

    return-void
.end method

.method public setImgResource()V
    .locals 3

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    const v2, 0x7f080623

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    const v2, 0x7f080625

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    const v2, 0x7f080622

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    const v2, 0x7f080624

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    const v2, 0x7f080627

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    const v2, 0x7f080629

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mNormalModeImg:Landroid/widget/ImageView;

    const v2, 0x7f080626

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;->mReverseModeImg:Landroid/widget/ImageView;

    const v2, 0x7f080628

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
