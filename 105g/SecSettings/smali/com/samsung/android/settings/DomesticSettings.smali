.class public Lcom/samsung/android/settings/DomesticSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DomesticSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecIndexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DomesticSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field mTwoPhonePreference:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/DomesticSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/DomesticSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DomesticSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/DomesticSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/DomesticSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DomesticSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500b9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DomesticSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupportMptcp()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DomesticSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "giga_lte"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setOrder(I)V

    const-class v1, Lcom/samsung/android/settings/GigaLteSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DomesticSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupport5GConcept(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120ac3

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f120ada

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/DomesticSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/DomesticSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/account/AccountUtils;->isKTPlayGameServiceAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "kt_play_game"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DomesticSettings;->removePreference(Ljava/lang/String;)Z

    :cond_2
    const-string/jumbo v0, "two_phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DomesticSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/DomesticSettings;->mTwoPhonePreference:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DomesticSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/account/AccountUtils;->checkKTservicePackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "kt_wifi_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DomesticSettings;->removePreference(Ljava/lang/String;)Z

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/account/AccountUtils;->isSupportTwoPhone()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "two_phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DomesticSettings;->removePreference(Ljava/lang/String;)Z

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "giga_lte"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DomesticSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    nop

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/DomesticSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mptcp_value"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f121a13

    goto :goto_0

    :cond_0
    const v2, 0x7f121a12

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DomesticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/DomesticSettings;->mTwoPhonePreference:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/DomesticSettings;->mTwoPhonePreference:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v2, :cond_3

    move v1, v3

    nop

    :cond_3
    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_4
    return-void
.end method
