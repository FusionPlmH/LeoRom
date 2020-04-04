.class public Lcom/samsung/android/settings/widget/SecMultiButtonPreference;
.super Landroid/support/v7/preference/Preference;
.source "SecMultiButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;,
        Lcom/samsung/android/settings/widget/SecMultiButtonPreference$OnButtonSelectedListener;
    }
.end annotation


# instance fields
.field private mBtnHigh:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

.field private mBtnLow:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

.field private mBtnMid:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

.field private mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mDesc:Ljava/lang/String;

.field private mHighEnabled:Z

.field private mHighIconImg:I

.field private mHighIconText:Ljava/lang/String;

.field private mHighText:Ljava/lang/String;

.field private mIsImgButton:Z

.field private mListener:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$OnButtonSelectedListener;

.field private mLowEnabled:Z

.field private mLowIconImg:I

.field private mLowIconText:Ljava/lang/String;

.field private mLowText:Ljava/lang/String;

.field private mMidEnabled:Z

.field private mMidIconImg:I

.field private mMidIconText:Ljava/lang/String;

.field private mMidText:Ljava/lang/String;

.field private mhasDesc:Z

.field private selectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const v0, 0x7f0d0221

    const v1, 0x7f0a04ed

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mLowIconImg:I

    iput v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mMidIconImg:I

    iput v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mHighIconImg:I

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mLowIconText:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mMidIconText:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mHighIconText:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mLowText:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mMidText:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mHighText:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mLowEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mMidEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mHighEnabled:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mDesc:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mIsImgButton:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mhasDesc:Z

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setLayoutResource(I)V

    new-instance v0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    new-instance v0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    new-instance v0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;-><init>(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->selectedPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->selectedPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->updateButtonStatus(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->callButtonSelectListener(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private callButtonSelectListener(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$OnButtonSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$OnButtonSelectedListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$OnButtonSelectedListener;->onButtonSelected(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;I)Z

    :cond_0
    return-void
.end method

.method private updateButtonStatus(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-boolean v3, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mIsImgButton:Z

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setSelected(ZZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-boolean v3, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mIsImgButton:Z

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setSelected(ZZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-boolean v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mIsImgButton:Z

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setSelected(ZZ)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-boolean v3, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mIsImgButton:Z

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setSelected(ZZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-boolean v3, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mIsImgButton:Z

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setSelected(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-boolean v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mIsImgButton:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setSelected(ZZ)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-boolean v3, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mIsImgButton:Z

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setSelected(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-boolean v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mIsImgButton:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setSelected(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-boolean v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mIsImgButton:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setSelected(ZZ)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateButtonUI()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mLowText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mMidText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mHighText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mLowEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mMidEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mHighEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mIsImgButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mLowIconImg:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setIconImage(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mMidIconImg:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setIconImage(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mHighIconImg:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setIconImage(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mLowIconText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setIconText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mMidIconText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setIconText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mHighIconText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->setIconText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getSelectedPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->selectedPosition:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mCustomView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnLow:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mCustomView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnMid:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mCustomView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mBtnHigh:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mCustomView:Landroid/view/View;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->bindView(Landroid/view/View;I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mhasDesc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mCustomView:Landroid/view/View;

    const v1, 0x7f0a0228

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mCustomView:Landroid/view/View;

    const v1, 0x7f0a0492

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$1;-><init>(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mCustomView:Landroid/view/View;

    const v2, 0x7f0a04ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$2;-><init>(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mCustomView:Landroid/view/View;

    const v3, 0x7f0a0394

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$3;-><init>(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->updateButtonUI()V

    iget v3, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->selectedPosition:I

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->updateButtonStatus(I)V

    return-void
.end method

.method public setButtonEnabled(IZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mHighEnabled:Z

    goto :goto_0

    :pswitch_1
    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mMidEnabled:Z

    goto :goto_0

    :pswitch_2
    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mLowEnabled:Z

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonIcon(III)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mLowIconImg:I

    iput p2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mMidIconImg:I

    iput p3, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mHighIconImg:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mIsImgButton:Z

    return-void
.end method

.method public setButtonIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mLowIconText:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mMidIconText:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mHighIconText:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mIsImgButton:Z

    return-void
.end method

.method public setOnButtonSelectedListener(Lcom/samsung/android/settings/widget/SecMultiButtonPreference$OnButtonSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecMultiButtonPreference$OnButtonSelectedListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->selectedPosition:I

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->updateButtonStatus(I)V

    :cond_0
    return-void
.end method

.method public setTextForButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mLowText:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mMidText:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->mHighText:Ljava/lang/String;

    return-void
.end method
