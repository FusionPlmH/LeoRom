.class public Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcOsaifukeitaiSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field public static final IS_GLOBAL_TAPANDPAY:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;


# instance fields
.field private final MNO:Ljava/lang/String;

.field private mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

.field private mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

.field private mNfcLock:Landroid/support/v7/preference/SecPreferenceScreen;

.field mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

.field private mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

.field private mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

.field private mSetLayout:Z

.field private mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product.first_api_level"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_GLOBAL_TAPANDPAY:Z

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    sget-object v1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->MNO:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->MNO:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcLock:Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mSetLayout:Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x251d

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v0

    const v1, 0x7f1500e0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_GLOBAL_TAPANDPAY:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1500e1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1500e2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->addPreferencesFromResource(I)V

    :goto_0
    const-string v0, "toggle_osaifukeitai_lock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "toggle_nfc"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v0, "toggle_android_beam"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const-string v0, "nfc_payment_settings_jpn"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    const-string v0, "toggle_lock_number_change"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    const-string v0, "toggle_lock_number_initialization"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->MNO:Ljava/lang/String;

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcLock:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;-><init>(Landroid/content/Context;Landroid/support/v7/preference/SecPreferenceScreen;Landroid/support/v14/preference/SecSwitchPreference;Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->MNO:Ljava/lang/String;

    const-string v1, "KDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->MNO:Ljava/lang/String;

    const-string v1, "KDR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcLock:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;-><init>(Landroid/content/Context;Landroid/support/v7/preference/SecPreferenceScreen;Landroid/support/v14/preference/SecSwitchPreference;Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->onCreate(Landroid/content/Context;)V

    :cond_6
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->onPause(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->onResume(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
