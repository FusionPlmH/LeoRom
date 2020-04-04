.class public Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentAppPreference"
.end annotation


# instance fields
.field private final appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

.field private final listener:Landroid/view/View$OnClickListener;

.field private final longListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d00ad

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->setLayoutResource(I)V

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iput-object p4, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-boolean v1, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a00bf

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->longListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
