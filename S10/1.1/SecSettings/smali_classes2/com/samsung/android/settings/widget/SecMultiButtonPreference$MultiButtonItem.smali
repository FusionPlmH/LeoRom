.class Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;
.super Ljava/lang/Object;
.source "SecMultiButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/widget/SecMultiButtonPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiButtonItem"
.end annotation


# instance fields
.field private mButton:Landroid/view/View;

.field private mDot:Landroid/widget/RadioButton;

.field private mImgIcon:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;

.field private mTvIcon:Landroid/widget/TextView;

.field private final selectedColor:I

.field final synthetic this$0:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

.field private final unSelectedColor:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->access$400(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0601a9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->selectedColor:I

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->this$0:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->access$400(Lcom/samsung/android/settings/widget/SecMultiButtonPreference;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0601aa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->unSelectedColor:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const v0, 0x7f0a0398

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    const v0, 0x7f0a039c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f0a039a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a039b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mTvIcon:Landroid/widget/TextView;

    const v0, 0x7f0a0399

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0a04d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    const v0, 0x7f0a04d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f0a04d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a04d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mTvIcon:Landroid/widget/TextView;

    const v0, 0x7f0a04d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0a0498

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    const v0, 0x7f0a049c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f0a049a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a049b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mTvIcon:Landroid/widget/TextView;

    const v0, 0x7f0a0499

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

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

.method public setEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setIconImage(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mTvIcon:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setIconText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mTvIcon:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mTvIcon:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setSelected(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->selectedColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->unSelectedColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mImgIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->selectedColor:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->unSelectedColor:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mTvIcon:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->selectedColor:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->unSelectedColor:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mDot:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference$MultiButtonItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
