.class public Lcom/samsung/android/settings/display/NewConversationMessageView;
.super Landroid/widget/LinearLayout;
.source "NewConversationMessageView.java"


# instance fields
.field private mContactIconRecvView:Landroid/widget/TextView;

.field private mContactIconSentView:Landroid/widget/TextView;

.field private mConversationItemView:Landroid/widget/LinearLayout;

.field private final mIconBackgroundColor:I

.field private final mIconText:Ljava/lang/CharSequence;

.field private final mIconTextColor:I

.field private final mIncoming:Z

.field private final mIsFirstItem:Z

.field private final mIsLastItem:Z

.field private final mMessageText:Ljava/lang/CharSequence;

.field private mMessageTextAndInfoView:Landroid/view/ViewGroup;

.field private mMessageTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/NewConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/NewConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/display/NewConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIsFirstItem:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIsLastItem:Z

    sget-object v1, Lcom/android/settings/R$styleable;->ConversationMessageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIncoming:Z

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIconTextColor:I

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIconBackgroundColor:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d01f0

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->initConversationItemView()V

    return-void
.end method

.method private initContactIcon()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0802ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0802ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0802ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    :goto_0
    nop

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIncoming:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mContactIconRecvView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mContactIconRecvView:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIconTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mContactIconRecvView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mContactIconSentView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isNewMessageClientInstalled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070455

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mContactIconSentView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mContactIconRecvView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initConversationItemView()V
    .locals 2

    const v0, 0x7f0a01d8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mConversationItemView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04c1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    const v0, 0x7f0a04c0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    const v0, 0x7f0a01d6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mContactIconRecvView:Landroid/widget/TextView;

    const v0, 0x7f0a01d7

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mContactIconSentView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIncoming:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mConversationItemView:Landroid/widget/LinearLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mConversationItemView:Landroid/widget/LinearLayout;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->initMessageBubbleView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->initContactIcon()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->setConversationListItemPadding()V

    return-void
.end method

.method private initMessageBubbleView()V
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0702f6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0702f4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0704b9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isNewMessageClientInstalled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIncoming:Z

    if-eqz v5, :cond_0

    const v5, 0x7f060157

    goto :goto_0

    :cond_0
    const v5, 0x7f06015a

    :goto_0
    iget-boolean v6, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIncoming:Z

    if-eqz v6, :cond_1

    const v6, 0x7f0802af

    goto :goto_1

    :cond_1
    const v6, 0x7f0802b0

    :goto_1
    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f0600db

    iget-boolean v7, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mIncoming:Z

    if-eqz v7, :cond_3

    const v7, 0x7f0804d0

    goto :goto_2

    :cond_3
    const v7, 0x7f0804d1

    :goto_2
    move v5, v6

    move v6, v7

    :goto_3
    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v1, v2, v1, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setConversationListItemPadding()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewConversationMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNewMessageClientInstalled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v3, 0x7f070451

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_0
    const v3, 0x7f070452

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mConversationItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mConversationItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateTextScale(IF)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v1, p2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public setTextScale(IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/NewConversationMessageView;->updateTextScale(IF)V

    return-void
.end method
