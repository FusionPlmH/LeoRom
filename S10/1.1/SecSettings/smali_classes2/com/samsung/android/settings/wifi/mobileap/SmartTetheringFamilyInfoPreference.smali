.class public Lcom/samsung/android/settings/wifi/mobileap/SmartTetheringFamilyInfoPreference;
.super Landroid/support/v7/preference/Preference;
.source "SmartTetheringFamilyInfoPreference.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mUserName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SmartTetheringFamilyInfoPreference"

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetheringFamilyInfoPreference;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a07f2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetheringFamilyInfoPreference;->mUserName:Landroid/widget/TextView;

    const v0, 0x7f0a078a

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetheringFamilyInfoPreference;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetheringFamilyInfoPreference;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0803dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
