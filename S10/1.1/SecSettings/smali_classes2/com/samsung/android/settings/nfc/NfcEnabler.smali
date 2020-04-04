.class public Lcom/samsung/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;


# static fields
.field private static mIconType:Ljava/lang/String;


# instance fields
.field private isAndroidBeamAllowed:I

.field private isNFCEnabled:I

.field private isNFCStateChangeAllowed:I

.field mAlert:Landroid/app/AlertDialog;

.field private final mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field private mBeamDisallowedBySystem:Z

.field private final mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsDexMode:Z

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

.field private final mNfcSettingsPref:Landroid/support/v7/preference/PreferenceScreen;

.field private final mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private final mPaymentSim:Landroid/support/v7/preference/SecPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_StatusBarIconType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIconType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/SwitchPreferenceCompat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/support/v7/preference/PreferenceScreen;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;Landroid/support/v7/preference/SecPreferenceScreen;Landroid/support/v7/preference/SecPreference;Landroid/support/v7/preference/PreferenceScreen;Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object p6, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p7, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object p8, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object p5, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iput-object p4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v1, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    const-string v1, "NfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBeamDisallowedBySystem = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isDexModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIsDexMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/nfc/NfcEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/nfc/NfcEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateABeamChanged()V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/android/settings/nfc/NfcEnabler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIsDexMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkKnox()V
    .locals 4

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v3, "isNFCEnabled"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCEnabled:I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v3, "isNFCStateChangeAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v3, "isAndroidBeamAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isAndroidBeamAllowed:I

    const-string v1, "NfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNFCEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCEnabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , isNFCStateChangeAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , isAndroidBeamAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isAndroidBeamAllowed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCEnabled:I

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const-string v1, "NfcEnabler"

    const-string v3, "EDM : NFC not allowed."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_4
    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    if-nez v1, :cond_7

    const-string v1, "NfcEnabler"

    const-string v3, "EDM : NFC state change not allowed."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_7
    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isAndroidBeamAllowed:I

    if-nez v1, :cond_8

    const-string v1, "NfcEnabler"

    const-string v3, "EDM : AndroidBeam not allowed."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_8
    return-void
.end method

.method private getBeamShareActivityState()Z
    .locals 6

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.nfc"

    const-string v2, "com.android.nfc.BeamShareActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v3, "android"

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    return v1

    :cond_0
    return v3

    :catch_0
    move-exception v2

    const-string v3, "NfcEnabler"

    const-string v4, "Failed to retrieve PackageManager for user"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private handleNfcStateABeamChanged()V
    .locals 3

    const-string v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBeamDisallowedBySystem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getBeamShareActivityState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NfcEnabler"

    const-string v1, " beamshare state is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getBeamShareActivityState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const v1, 0x7f1219df

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const v1, 0x7f1219de

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 7

    const v0, 0x7f120f62

    const v1, 0x7f120f66

    const/4 v2, 0x0

    const v3, 0x7f1219de

    const v4, 0x7f1219df

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const-string v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const v1, 0x7f120f19

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_2e

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    goto :goto_1

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    :cond_10
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_5

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIsDexMode:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_12
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const-string v2, "no_outgoing_beam"

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_14
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "GATE"

    const-string v2, "<GATE-M>NFC_ON</GATE-M>"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const-string v0, "VZW"

    sget-object v2, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIconType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_19
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    goto :goto_3

    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    :cond_1c
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_2e

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v6}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_1e
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_1f
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_20
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_21
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_22
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_23
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    :cond_24
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_5

    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_25
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_26
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "GATE"

    const-string v2, "<GATE-M>NFC_OFF</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const-string v1, "VZW"

    sget-object v2, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIconType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    :cond_28
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_29
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_2a
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_2b
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_2c
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    :cond_2d
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_2e
    :goto_5
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->checkKnox()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDexModeOn()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method private isNfcTurnOn()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private makeAlertDialog(Ljava/lang/String;)V
    .locals 4

    move-object v0, p1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "NfcSettingsOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ConnectionsNfcSettingsOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "AndroidBeamOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f120116

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120cd6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    const-string v2, "RwOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f120ad2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120f61

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_2
    :goto_0
    const v2, 0x7f120f26

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120476

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_3
    :goto_1
    const v2, 0x104000a

    new-instance v3, Lcom/samsung/android/settings/nfc/NfcEnabler$2;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$2;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/samsung/android/settings/nfc/NfcEnabler$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$3;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/nfc/NfcEnabler$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$4;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public chinaDisabled_offslot(I)Z
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "phone1_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const-string v4, "ril.ICC_TYPE0"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ril.ICC_TYPE1"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "NfcEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SimState_1 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "NfcEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SimState_2 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_2
    return v2

    :cond_3
    if-ne p1, v2, :cond_5

    if-eqz v3, :cond_4

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xe42

    if-eqz v1, :cond_5

    const-string v1, "NfcEnabler"

    const-string v3, "onPreferenceChange - NfcSetting switch"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    if-nez v1, :cond_0

    const-string v1, "NfcEnabler"

    const-string v2, "EDM : NFC state change not allowed. so can\'t change toggle button"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const/16 v1, 0xc8e

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_1
    invoke-static {v2, v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDomesticUi()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "ConnectionsNfcSettingsOff"

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->disable()Z

    invoke-static {v2, v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    const-string v3, "NfcEnabler"

    const-string v4, "onPreferenceChange - AndroidBeam switch"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x1b69

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const v5, 0x7f1219df

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDomesticUi()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v2, "AndroidBeamOff"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const v5, 0x7f1219de

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :goto_0
    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    :cond_8
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    const-string v0, "RwOff"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v0, 0xe42

    const/16 v1, 0x1b67

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNfcTurnOn()Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    const/16 v0, 0xe43

    const/16 v1, 0xe42

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_1
    invoke-static {v1, v0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDomesticUi()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "NfcSettingsOff"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disable()Z

    invoke-static {v1, v0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->checkKnox()V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isDexModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIsDexMode:Z

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateABeamChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    :cond_4
    return-void
.end method
