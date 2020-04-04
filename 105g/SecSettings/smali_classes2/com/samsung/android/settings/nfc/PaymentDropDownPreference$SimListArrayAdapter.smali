.class Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PaymentDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimListArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field ViewResourceID:I

.field otherSimIndex:I

.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->ViewResourceID:I

    iput v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->otherSimIndex:I

    invoke-static {p1, p5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$202(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;I)I

    iput p3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->ViewResourceID:I

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->onUpdateAdapter()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const-string v2, "sec_nfc_sim_dropdown_list_view_row"

    const-string v3, "layout"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const-string v2, "nfc_sim_list_view_row_image_view"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v2, v2, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v2, v2, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const-string v4, "nfc_sim_list_view_radio_text_title"

    const-string v5, "id"

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v4, v4, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$300(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getPhonePLMNName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setPLMNName(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getPhonePLMNName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setPLMNName(Ljava/lang/String;I)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const-string v6, "nfc_sim_list_summary"

    const-string v7, "id"

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v6, v6, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, p1

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v6}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$300(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Z

    move-result v6

    if-eqz v6, :cond_3

    rem-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$400()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$400()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    :goto_0
    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$400()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v6}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$200(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)I

    move-result v6

    if-ne p1, v6, :cond_6

    move-object v6, v2

    check-cast v6, Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    if-eqz v4, :cond_6

    move-object v6, v2

    check-cast v6, Landroid/widget/CheckedTextView;

    invoke-virtual {v6}, Landroid/widget/CheckedTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object v6, v4

    check-cast v6, Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v6, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->chinaDisabled_offslot(I)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f120f6c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_7
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_8
    return-object v0
.end method
