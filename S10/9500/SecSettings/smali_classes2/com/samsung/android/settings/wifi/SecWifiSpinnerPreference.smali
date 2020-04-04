.class public Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;
.super Landroid/support/v7/preference/Preference;
.source "SecWifiSpinnerPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private mCallback:Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentObject:Ljava/lang/Object;

.field private mEntries:[Ljava/lang/CharSequence;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPosition:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mTitle:Ljava/lang/CharSequence;

.field private uiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$2;-><init>(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->uiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v0, 0x7f0d02d3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)Landroid/app/UiModeManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->uiModeManager:Landroid/app/UiModeManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mPosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mPosition:I

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mCurrentObject:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)Landroid/widget/ArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mCallback:Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

    return-object v0
.end method

.method private updateEntries()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$1;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02d2

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$1;-><init>(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;Landroid/content/Context;I)V

    return-object v0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mCurrentObject:Ljava/lang/Object;

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0a0861

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a07a1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget v2, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x17

    if-eq p2, v0, :cond_0

    const/16 v0, 0x42

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mCallback:Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

    return-void
.end method

.method public setEntries(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->updateEntries()V

    return-void
.end method

.method public setSelection(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mPosition:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    iget v1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mCurrentObject:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->notifyChanged()V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->notifyChanged()V

    return-void
.end method
