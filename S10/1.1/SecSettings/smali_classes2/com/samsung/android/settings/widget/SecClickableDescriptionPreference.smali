.class public Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;
.super Landroid/support/v7/preference/Preference;
.source "SecClickableDescriptionPreference.java"


# instance fields
.field private mBeginIndex:I

.field private mCustomBgColor:I

.field private mCustomBottomPadding:I

.field private mCustomTopPadding:I

.field private mDescription:Ljava/lang/String;

.field private mEndIndex:I

.field private mMessage:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomBgColor:I

    iput v0, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomTopPadding:I

    iput v0, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomBottomPadding:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->init()V

    return-void
.end method

.method private setCustomAttr(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomBgColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomBgColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomTopPadding:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomTopPadding:I

    :goto_0
    iget v2, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomBottomPadding:I

    if-ne v2, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomBottomPadding:I

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private showDialogByClickOnSpannableText(Landroid/widget/TextView;Ljava/lang/String;IILjava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;

    invoke-direct {v1, p0, p5}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;-><init>(Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;Ljava/lang/String;)V

    const/16 v2, 0x21

    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0xffff01

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v3, p3, p4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    const v0, 0x7f0d028e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->setLayoutResource(I)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a01c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->setCustomAttr(Landroid/view/View;)V

    const v2, 0x7f0a086c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v5, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mDescription:Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mBeginIndex:I

    iget v8, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mEndIndex:I

    iget-object v9, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mMessage:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->showDialogByClickOnSpannableText(Landroid/widget/TextView;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public setBeginIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mBeginIndex:I

    return-void
.end method

.method public setCustomBackground(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mCustomBgColor:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setEndIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mEndIndex:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->mMessage:Ljava/lang/String;

    return-void
.end method
