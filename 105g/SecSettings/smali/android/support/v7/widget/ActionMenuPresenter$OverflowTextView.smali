.class Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowTextView"
.end annotation


# instance fields
.field private mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 8

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v0, Landroid/support/v7/appcompat/R$attr;->actionOverflowButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->setFocusable(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_actionMenuTextAppearance:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p0, v3}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$string;->sesl_more_item_label:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v7, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    invoke-virtual {v6, v7, v5, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v5, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_0

    move v4, v0

    nop

    :cond_0
    invoke-static {p1, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->access$502(Landroid/support/v7/widget/ActionMenuPresenter;Z)Z

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$500(Landroid/support/v7/widget/ActionMenuPresenter;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/support/v7/appcompat/R$drawable;->sesl_action_bar_item_text_background:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    sget p1, Landroid/support/v7/appcompat/R$drawable;->sesl_action_bar_item_text_background_dark:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->setBackgroundResource(I)V

    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-le p1, v4, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->seslSetButtonShapeEnabled(Z)V

    goto :goto_1

    :cond_2
    new-instance p1, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Landroid/support/v7/appcompat/R$drawable;->sesl_action_text_button_show_button_background:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    :goto_1
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {v0}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {v0}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    return v1
.end method
