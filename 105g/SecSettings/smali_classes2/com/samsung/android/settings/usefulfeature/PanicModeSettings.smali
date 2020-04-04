.class public Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PanicModeSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

.field private mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->updateSendSOSMessageSummary()V

    return-void
.end method

.method private updatePreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key_safety_assistance_swa"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "key_safety_assistance_swa"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-object v0
.end method

.method private updateSendSOSMessageSummary()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "send_emergency_message"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    nop

    :cond_0
    move v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

    if-ne v0, v1, :cond_1

    const v1, 0x7f121a13

    goto :goto_0

    :cond_1
    const v1, 0x7f121a12

    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x11f8

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0211

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->rebuildLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->removeHeaderView()V

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->setHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "PanicModeSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500ea

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const-string v1, "PanicModeSettings"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0211

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->rebuildLayout(Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->setHeaderView(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1205

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "PanicModeSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->updatePreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->updateSendSOSMessageSummary()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "send_emergency_message"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public rebuildLayout(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a0236

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0233

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a007f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f1210a3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const v3, 0x7f1210a2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0805c4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const v3, 0x7f0805c3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_2
    return-void
.end method
