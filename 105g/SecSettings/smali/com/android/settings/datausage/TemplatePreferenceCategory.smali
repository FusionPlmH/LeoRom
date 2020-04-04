.class public Lcom/android/settings/datausage/TemplatePreferenceCategory;
.super Landroid/support/v7/preference/SecPreferenceCategory;
.source "TemplatePreferenceCategory.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# instance fields
.field private mIsPrimary:Z

.field private mIsRoaming:Z

.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mIsPrimary:Z

    iput-boolean v0, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mIsRoaming:Z

    return-void
.end method

.method private getMDOEnabledCount()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "urspservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UrspManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/UrspManager;->getAllUrspRule(I)[I

    move-result-object v1

    array-length v2, v1

    return v2
.end method

.method private updateMDOPreferenceStatus(Z)V
    .locals 11

    const-string v0, "mobile_data_only"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->isMDODimmed(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "urspservice"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/UrspManager;

    invoke-virtual {v4, v3}, Landroid/net/UrspManager;->getUrspMode(I)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getMDOEnabledCount()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f12141c

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f10003d

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v7, v8, v6, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f12141b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public addPreference(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public getRoaming()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mIsRoaming:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreferenceCategory;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const-string v0, "DCM"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Wi-Fi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    return-void
.end method

.method public pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mTemplate:Landroid/net/NetworkTemplate;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/datausage/TemplatePreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/TemplatePreference;

    iget-object v2, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mTemplate:Landroid/net/NetworkTemplate;

    iget v3, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mSubId:I

    invoke-interface {v1, v2, v3, p1}, Lcom/android/settings/datausage/TemplatePreference;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null mTemplate for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeMobileDataPreference()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_usage_enable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string v0, "confirm_at_boot"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    return-void
.end method

.method public removePreference(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public setPrimary(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mIsPrimary:Z

    return-void
.end method

.method public setRoaming(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mIsRoaming:Z

    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mTemplate:Landroid/net/NetworkTemplate;

    iput p2, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mSubId:I

    return-void
.end method

.method public setVolteCallState(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mIsPrimary:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_usage_enable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/CellDataPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setVolteCallState(Z)V

    :cond_0
    return-void
.end method

.method public updateMobileCategory()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mIsPrimary:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removeMobileDataPreference()V

    const-string v0, "mobile_data_only"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateMobileCategoryUI(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateMDOPreferenceStatus(Z)V

    return-void
.end method
