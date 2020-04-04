.class public Lcom/samsung/android/settings/nfc/NfcSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

.field private static mConfigReaderModeUI:Ljava/lang/String;

.field private static mIconType:Ljava/lang/String;


# instance fields
.field private final ABOVE_MID:I

.field private final ABOVE_MID_TAB:I

.field private final BOTTOM:I

.field private final CENTER:I

.field private final FLEX:I

.field private final LEFT:I

.field private final RIGHT:I

.field private final RIGHT_TOP:I

.field private final TOP:I

.field private final TOP_FOLDER:I

.field private androidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field private cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private isEmergencyMode:Z

.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

.field private mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private nfcMode:Landroid/support/v7/preference/SecPreferenceCategory;

.field private nfcSettingPref:Landroid/support/v7/preference/PreferenceScreen;

.field private paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

.field private preferredSimCard:Landroid/support/v7/preference/SecPreferenceCategory;

.field private standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private tapPay:Landroid/support/v7/preference/SecPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_ConfigReaderModeUI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mConfigReaderModeUI:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_StatusBarIconType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/NfcSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isEmergencyMode:Z

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->CENTER:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->TOP:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->BOTTOM:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->ABOVE_MID:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->RIGHT_TOP:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->LEFT:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->RIGHT:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->TOP_FOLDER:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->ABOVE_MID_TAB:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->FLEX:I

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$1;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/nfc/NfcSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isEmergencyMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 14

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->removeHeaderView()V

    const v1, 0x7f1500e6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->addPreferencesFromResource(I)V

    const-string v1, "android_beam_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->androidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const-string v1, "nfc_mode_general"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcMode:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string v1, "mode_card_mode"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    const-string v1, "mode_standard_mode"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    const-string v1, "nfc_payment_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->tapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v1, "nfc_payment_sim"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const-string v1, "nfc_preferred_general"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->preferredSimCard:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string v1, "empty_general"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcSettingPref:Landroid/support/v7/preference/PreferenceScreen;

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcMode:Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcMode:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->seslSetSubheaderRoundedBg(I)V

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcMode:Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcMode:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->seslSetSubheaderRoundedBg(I)V

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDualSwp()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->refresh()V

    goto :goto_1

    :cond_6
    iput-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->preferredSimCard:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_7
    :goto_1
    const-string v1, "VZW"

    sget-object v4, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->isAddPreference()V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    if-ne v1, v4, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->isDeletePreference()V

    :cond_9
    :goto_2
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->androidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iget-object v9, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->tapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v10, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcSettingPref:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iget-object v13, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/samsung/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;Landroid/support/v7/preference/SecPreferenceScreen;Landroid/support/v7/preference/SecPreference;Landroid/support/v7/preference/PreferenceScreen;Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d01fe

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->setHeaderView(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->populateViewForOrientation()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcSettings;->setAutoRemoveInsetCategory(Z)V

    new-instance v3, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    const/16 v2, 0xc

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->seslSetSubheaderRoundedBg(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-object v0
.end method

.method public static isSupportDomesticUi()Z
    .locals 2

    const-string v0, "KOREA"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mConfigReaderModeUI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportDualSwp()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SmartcardSvc_ConfigMultiSimMode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportDualSwp true : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string v1, "NfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportDualSwp false : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public static isSupportRWP2p()Z
    .locals 2

    const-string v0, "KOREA"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mConfigReaderModeUI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CHINA"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mConfigReaderModeUI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private populateViewForOrientation()V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->startAnimation()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v0

    const v1, 0x7f0a0550

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v1

    const v2, 0x7f0a054e

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v3

    const v4, 0x7f0a054f

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v3

    const v4, 0x7f0a0551

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/widget/LinearLayout;

    :goto_0
    if-eqz v2, :cond_1

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_1
    return-void
.end method

.method private startAnimation()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v2

    const v3, 0x7f0a0081

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v2

    const v3, 0x7f0a0559

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v2

    const v3, 0x7f0a0082

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v2

    const v3, 0x7f0a055a

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    :goto_0
    const v2, 0x7f120f17

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const-string v2, "1"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const v3, 0x7f01001d

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f01001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f01001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f010022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f010020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f01001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f010021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f01001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f01001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f010019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xe42

    return v0
.end method

.method public isAddPreference()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "VZW"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nfc_payment_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    const-string v1, "NfcSettings"

    const-string v2, "isAddPreference tapPayGroup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public isDeletePreference()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc.hce"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nfc_payment_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string v1, "NfcSettings"

    const-string v2, "isDeletePreference tapPayGroup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public isDualSimDisabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->chinaDisabled_offslot(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method makeAlertDialog()V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ultra_powersaving_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f120f64

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const v1, 0x7f1207ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f120f63

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "NFC"

    aput-object v5, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/nfc/NfcSettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$2;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    const-string v1, "nfc.product.support.uicc"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "nfc.product.support.ese"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcSettings;->setHasOptionsMenu(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v3, "CscFeature_NFC_ConfigAdvancedSettings"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "DISABLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcSettings;->setHasOptionsMenu(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->setHasOptionsMenu(Z)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->populateViewForOrientation()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->setHasOptionsMenu(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDualSwp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "nfc.product.support.uicc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "nfc.product.support.ese"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NfcSettings"

    const-string v1, "UICC & eSE CE not support. not add advanced setting menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_ConfigAdvancedSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DISABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    const v1, 0x7f120f5d

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.SEC_NFC_ADVANCED_SETTING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isEmergencyMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    const-string v0, "NfcSettings"

    const-string v1, "onPause() So AlertDialog dismiss in EmergencyMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "NfcSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->resume()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isEmergencyMode:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isEmergencyMode:Z

    if-eqz v2, :cond_1

    const-string v2, "NfcSettings"

    const-string v3, "show makeAlertDialog in EmergencyMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->makeAlertDialog()V

    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 7

    const-string v0, "NfcSettings"

    const-string v1, "refresh()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getPreferredSimSlot()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getEntryArray()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->clearItems()V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 v4, 0x1

    aget-object v5, v1, v4

    const-string v6, "1"

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "select_name_1"

    :goto_0
    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "select_name_2"

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->onUpdateAdapter()V

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    new-instance v6, Lcom/samsung/android/settings/nfc/NfcSettings$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$4;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setCallback(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;)V

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v5

    if-eq v5, v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->isDualSimDisabled()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setEnabled(Z)V

    :goto_3
    return-void
.end method
