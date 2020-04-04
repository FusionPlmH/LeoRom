.class public Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DefaultPaymentSettingsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field protected final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field protected final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field protected final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "default_payment_app"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.nfc.hce"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isAllEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->removePreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->refresh()V

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v3, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v3, 0x7f12015e

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    instance-of v2, v2, Landroid/support/v7/preference/SecPreference;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v2, Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_6
    return-void
.end method
