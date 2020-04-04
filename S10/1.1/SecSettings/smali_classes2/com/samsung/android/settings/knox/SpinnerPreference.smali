.class public Lcom/samsung/android/settings/knox/SpinnerPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "SpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/SpinnerPreference$CustomHolder;,
        Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;
    }
.end annotation


# instance fields
.field entries:[Ljava/lang/CharSequence;

.field entryValues:[Ljava/lang/CharSequence;

.field fingerPlusIdx:I

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSpinner:Landroid/support/v7/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400b7

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->mAdapter:Landroid/widget/BaseAdapter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->fingerPlusIdx:I

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/knox/SpinnerPreference;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/knox/SpinnerPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method getFingerPlusIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->fingerPlusIdx:I

    return v0
.end method

.method getresult(I)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->spinnerClickEvent(I)Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/DropDownPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060323

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SpinnerPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SpinnerPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->entries:[Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a07aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->mSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    new-instance v1, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;-><init>(Lcom/samsung/android/settings/knox/SpinnerPreference;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->mSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method setFingerPlusIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference;->fingerPlusIdx:I

    return-void
.end method
