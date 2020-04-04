.class public Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;
.super Lcom/android/settings/applications/LayoutPreference;
.source "NavigationBarGesturePreference.java"


# instance fields
.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mBtnGesturePoc1:Landroid/widget/RadioButton;

.field private mBtnGesturePoc2:Landroid/widget/RadioButton;

.field private mGestureHintLayout:Landroid/widget/ImageView;

.field private mGesturePoc1Container:Landroid/widget/LinearLayout;

.field private mGesturePoc1Divider:Landroid/widget/LinearLayout;

.field private mGesturePoc2Container:Landroid/widget/LinearLayout;

.field private mNavigationBarGestureImg:Landroid/widget/ImageView;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnehandModeDisableDialog:Landroid/app/AlertDialog;

.field private mRecentHomeBack:Landroid/widget/RadioButton;

.field private mRecentHomeBackContainer:Landroid/widget/LinearLayout;

.field private mRecentHomeBackContainerDivider:Landroid/widget/LinearLayout;

.field private mShowNavigationBar:Landroid/widget/RadioButton;

.field private mShowNavigationBarContainer:Landroid/widget/LinearLayout;

.field private mShowNavigationBarImg:Landroid/widget/ImageView;

.field private mTouchStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnehandModeDisableDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mTouchStatus:Z

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnehandModeDisableDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mTouchStatus:Z

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnehandModeDisableDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mTouchStatus:Z

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnehandModeDisableDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mTouchStatus:Z

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnehandModeDisableDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mTouchStatus:Z

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBar:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mRecentHomeBack:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mBtnGesturePoc1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mBtnGesturePoc2:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mTouchStatus:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mTouchStatus:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->showOneHandModeDisablePopup(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private isReverseButtonOrder()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_key_order"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private showOneHandModeDisablePopup(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120eff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120710

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$6;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$5;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$4;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnehandModeDisableDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private startAnimation([I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBarImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarGestureImg:Landroid/widget/ImageView;

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarGestureImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarGestureImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getGestureMode()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/applications/LayoutPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBarContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const v0, 0x7f0a0760

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBarContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBarContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mRecentHomeBackContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    const v0, 0x7f0a0646

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mRecentHomeBackContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mRecentHomeBackContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBar:Landroid/widget/RadioButton;

    if-nez v0, :cond_2

    const v0, 0x7f0a075f

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBar:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBar:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mRecentHomeBack:Landroid/widget/RadioButton;

    if-nez v0, :cond_3

    const v0, 0x7f0a0645

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mRecentHomeBack:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mRecentHomeBack:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBarImg:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    const v0, 0x7f0a0761

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBarImg:Landroid/widget/ImageView;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarGestureImg:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    const v0, 0x7f0a04fa

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarGestureImg:Landroid/widget/ImageView;

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureHintLayout:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    const v0, 0x7f0a0346

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureHintLayout:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->updateGestureHintLayout()V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mRecentHomeBackContainerDivider:Landroid/widget/LinearLayout;

    if-nez v0, :cond_7

    const v0, 0x7f0a0647

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mRecentHomeBackContainerDivider:Landroid/widget/LinearLayout;

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePoc1Container:Landroid/widget/LinearLayout;

    if-nez v0, :cond_8

    const v0, 0x7f0a034a

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePoc1Container:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePoc1Container:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePoc1Divider:Landroid/widget/LinearLayout;

    if-nez v0, :cond_9

    const v0, 0x7f0a034b

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePoc1Divider:Landroid/widget/LinearLayout;

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mBtnGesturePoc1:Landroid/widget/RadioButton;

    if-nez v0, :cond_a

    const v0, 0x7f0a0349

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mBtnGesturePoc1:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mBtnGesturePoc1:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePoc2Container:Landroid/widget/LinearLayout;

    if-nez v0, :cond_b

    const v0, 0x7f0a034e

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePoc2Container:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePoc2Container:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mBtnGesturePoc2:Landroid/widget/RadioButton;

    if-nez v0, :cond_c

    const v0, 0x7f0a034d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mBtnGesturePoc2:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mBtnGesturePoc2:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->updateGestureHintExtra()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->updateRadioButtonSelectState()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->setAnimationResource()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->startAnimation([I)V

    return-void
.end method

.method public setAnimationResource()[I
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "uimode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    const v3, 0x7f080524

    const v4, 0x7f080522

    const v5, 0x7f080525

    const v6, 0x7f080523

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v9

    if-ne v9, v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->isReverseButtonOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080633

    aput v0, v1, v8

    aput v6, v1, v7

    goto :goto_0

    :cond_0
    const v0, 0x7f080631

    aput v0, v1, v8

    aput v5, v1, v7

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->isReverseButtonOrder()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f080632

    aput v0, v1, v8

    aput v4, v1, v7

    goto :goto_0

    :cond_2
    const v0, 0x7f080630

    aput v0, v1, v8

    aput v3, v1, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->isReverseButtonOrder()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f080637

    aput v0, v1, v8

    aput v6, v1, v7

    goto :goto_0

    :cond_4
    const v0, 0x7f080635

    aput v0, v1, v8

    aput v5, v1, v7

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->isReverseButtonOrder()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f080636

    aput v0, v1, v8

    aput v4, v1, v7

    goto :goto_0

    :cond_6
    const v0, 0x7f080634

    aput v0, v1, v8

    aput v3, v1, v7

    :goto_0
    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public updateButtonOrder()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->setAnimationResource()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->startAnimation([I)V

    return-void
.end method

.method public updateGestureHintExtra()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarGestureHintExtra()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mRecentHomeBackContainerDivider:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePoc1Container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePoc1Divider:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePoc2Container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateGestureHintLayout()V
    .locals 4

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureHintLayout:Landroid/widget/ImageView;

    const v2, 0x7f080623

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureHintLayout:Landroid/widget/ImageView;

    const v2, 0x7f080624

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_gesture_hint"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    move v1, v3

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureHintLayout:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureHintLayout:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public updateRadioButtonSelectState()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->getGestureMode()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBar:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mRecentHomeBack:Landroid/widget/RadioButton;

    if-ne v0, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarGestureHintExtra()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mBtnGesturePoc1:Landroid/widget/RadioButton;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mBtnGesturePoc2:Landroid/widget/RadioButton;

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    move v2, v3

    nop

    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    return-void
.end method
