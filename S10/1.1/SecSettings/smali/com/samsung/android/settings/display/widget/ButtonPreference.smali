.class public Lcom/samsung/android/settings/display/widget/ButtonPreference;
.super Landroid/support/v7/preference/Preference;
.source "ButtonPreference.java"


# instance fields
.field private mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mButtonBackGroundRes:I

.field private mButtonContainer:Landroid/widget/LinearLayout;

.field private mButtonTextColor:I

.field private mContainerBottomPadding:I

.field private mContainerTopPadding:I

.field private mContext:Landroid/content/Context;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPositionMode:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/widget/ButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/widget/ButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/display/widget/ButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mPositionMode:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->initButtonLayout()V

    sget-object v1, Lcom/android/settings/R$styleable;->SecButtonPreferenceStyle:[I

    const v2, 0x7f130103

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const v2, 0x7f0802ac

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButtonBackGroundRes:I

    const v0, 0x7f0601b5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButtonTextColor:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const v0, 0x7f0d0144

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setLayoutResource(I)V

    return-void
.end method

.method private initButtonLayout()V
    .locals 1

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->seslSetSubheaderRoundedBg(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public getContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    if-nez v0, :cond_0

    const v0, 0x7f0a0140

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0133

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/RoundButtonView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget v2, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButtonBackGroundRes:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/RoundButtonView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget v2, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButtonTextColor:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/RoundButtonView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mPositionMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mContainerBottomPadding:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mContainerTopPadding:I

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mContainerTopPadding:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mContainerTopPadding:I

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mContainerBottomPadding:I

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mContainerBottomPadding:I

    :goto_1
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonBackGroundResource(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButtonBackGroundRes:I

    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButtonTextColor:I

    return-void
.end method

.method public setColorRoundButtonStyle()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v2, 0x7f0802ac

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/RoundButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v2, 0x7f0601b5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/RoundButtonView;->setTextColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setContainerTopBottomPadding(II)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mContainerBottomPadding:I

    iput p1, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mContainerTopPadding:I

    return-void
.end method

.method public setDefaultRoundButtonStyle()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v2, 0x7f0805d4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/RoundButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v2, 0x7f0601a4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/RoundButtonView;->setTextColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->notifyChanged()V

    return-void
.end method
