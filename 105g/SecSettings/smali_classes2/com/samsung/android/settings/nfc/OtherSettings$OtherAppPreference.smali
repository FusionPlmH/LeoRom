.class public Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "OtherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/OtherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OtherAppPreference"
.end annotation


# instance fields
.field private final appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

.field private final listener:Landroid/view/View$OnClickListener;

.field private final longListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0203

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->setLayoutResource(I)V

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iput-object p4, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->listener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-boolean v1, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    :cond_0
    const v1, 0x7f0a00bf

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0562

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const v3, 0x7f0a0561

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v6, 0x7f0a0563

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-virtual {v2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/16 v8, 0xcc

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
