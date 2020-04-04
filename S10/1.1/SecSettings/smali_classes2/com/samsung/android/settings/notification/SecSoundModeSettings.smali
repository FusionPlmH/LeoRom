.class public Lcom/samsung/android/settings/notification/SecSoundModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecSoundModeSettings.java"

# interfaces
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
.implements Lcom/samsung/android/settings/search/SecIndexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;

.field private static mAudioManager:Landroid/media/AudioManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDNDStatusObserver:Landroid/database/ContentObserver;

.field private mDndEnabled:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mIntervalTime:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

.field private mIsInUpdateProgress:Z

.field private mMuteIntervalOn:Landroid/support/v14/preference/SecSwitchPreference;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundModeMultiBtn:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

.field private mSoundModeUIAsync:Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;

.field private mTemporaryMuteObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$7;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings$7;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings$1;-><init>(Lcom/samsung/android/settings/notification/SecSoundModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mTemporaryMuteObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings$2;-><init>(Lcom/samsung/android/settings/notification/SecSoundModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mDNDStatusObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->updateUIByUser()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->isZenModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/notification/SecSoundModeSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->isInUpdateSoundModeControlsAsync()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->updateControls()V

    return-void
.end method

.method static synthetic access$200()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mIsInUpdateProgress:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mMuteIntervalOn:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/notification/SecSoundModeSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->removeDialog(I)V

    return-void
.end method

.method private getRemainTimeString()Landroid/text/SpannableString;
    .locals 15

    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v0

    const v1, 0x36ee80

    div-int v1, v0, v1

    const v2, 0xea60

    div-int v2, v0, v2

    rem-int/lit8 v2, v2, 0x3c

    const-string v3, "%s %s"

    const-string v4, "%s"

    const-string v5, "SecSoundModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRemainMins(), currentRemainTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100022

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100023

    invoke-virtual {v7, v8, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    if-nez v0, :cond_0

    const/4 v6, 0x0

    return-object v6

    :cond_0
    if-nez v1, :cond_1

    if-gtz v2, :cond_2

    :cond_1
    if-lez v1, :cond_4

    if-nez v2, :cond_4

    :cond_2
    if-nez v1, :cond_3

    const-string v10, "%s"

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v7, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    if-nez v2, :cond_5

    const-string v10, "%s"

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v5, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_4
    if-lez v1, :cond_5

    if-lez v2, :cond_5

    const-string v10, "%s %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v9

    aput-object v7, v11, v6

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :cond_5
    :goto_0
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    const v11, 0x7f121579

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v8, v6, v9

    invoke-virtual {v10, v11, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f06016e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v12, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v10

    const/16 v14, 0x21

    invoke-virtual {v9, v12, v10, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v9
.end method

.method private init()V
    .locals 11

    const-string v0, "SecSoundModeSettings"

    const-string v1, "init() start"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f1500fc

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->addPreferencesFromResource(I)V

    const-string v1, "sound_mode"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeMultiBtn:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    sget-object v1, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeMultiBtn:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setSelectedPosition(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeMultiBtn:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setSelectedPosition(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeMultiBtn:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setSelectedPosition(I)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SoundUtils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeMultiBtn:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setButtonEnabled(IZ)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SoundUtils;->isMuteAllSoundEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeMultiBtn:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-virtual {v1, v3, v3}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setButtonEnabled(IZ)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeMultiBtn:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    const v5, 0x7f08067e

    const v6, 0x7f080682

    const v7, 0x7f080677

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setButtonIcon(III)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeMultiBtn:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f121668

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f121669

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f121667

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setTextForButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeMultiBtn:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    new-instance v5, Lcom/samsung/android/settings/notification/SecSoundModeSettings$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings$3;-><init>(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setOnButtonSelectedListener(Lcom/samsung/android/settings/widget/SecMultiButtonPreference$OnButtonSelectedListener;)V

    const-string v1, "temporary_mute"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mMuteIntervalOn:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mMuteIntervalOn:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v5, Lcom/samsung/android/settings/notification/SecSoundModeSettings$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings$4;-><init>(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V

    invoke-virtual {v1, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "mute_duration"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mIntervalTime:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mIntervalTime:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mIntervalTime:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100022

    invoke-virtual {v7, v8, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f121535

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mIntervalTime:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v9

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mIntervalTime:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    new-instance v2, Lcom/samsung/android/settings/notification/SecSoundModeSettings$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings$5;-><init>(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->updateControls()V

    const-string v1, "SecSoundModeSettings"

    const-string v2, "init() end"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isInUpdateSoundModeControlsAsync()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeUIAsync:Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeUIAsync:Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isZenModeEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private registerListenersAndObserver()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundModeSettings$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings$6;-><init>(Lcom/samsung/android/settings/notification/SecSoundModeSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_time_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mTemporaryMuteObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mDNDStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private releaseListenersAndObserver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mTemporaryMuteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mDNDStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private setMutePreferenceEnabled(Z)V
    .locals 2

    const-string v0, "temporary_mute"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "temporary_mute"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string v0, "dummy_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "dummy_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :cond_1
    const-string v0, "mute_duration"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "mute_duration"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mMuteIntervalOn:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mMuteIntervalOn:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :cond_3
    return-void
.end method

.method private updateControls()V
    .locals 10

    const-string v0, "SecSoundModeSettings"

    const-string v1, "updateControls() start"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mIsInUpdateProgress:Z

    sget-object v1, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mode_ringer_time_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v3, "SecSoundModeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateControls(), currentRingerMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " currentMuteIntervalOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeMultiBtn:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setSelectedPosition(I)V

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeMultiBtn:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setSelectedPosition(I)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeMultiBtn:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setSelectedPosition(I)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mMuteIntervalOn:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    sget-object v3, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getPrevRingerMode()I

    move-result v3

    const v5, 0x7f12166e

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mMuteIntervalOn:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v3

    const v6, 0x7f1218ca    # 1.94196E38f

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mMuteIntervalOn:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v8, v0, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getRemainTimeString()Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mMuteIntervalOn:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v7, v0, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mMuteIntervalOn:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v3

    const v6, 0x7f121669

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mMuteIntervalOn:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v8, v0, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getRemainTimeString()Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mMuteIntervalOn:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v7, v0, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    nop

    :goto_2
    sget-object v3, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v3

    const-string v5, "SecSoundModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentMuteInterval : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x3c

    if-eq v3, v5, :cond_6

    const/16 v5, 0x78

    if-eq v3, v5, :cond_6

    const/16 v5, 0xb4

    if-ne v3, v5, :cond_5

    goto :goto_3

    :cond_5
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mIntervalTime:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mIntervalTime:Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;

    div-int/lit8 v6, v3, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/notification/SoundModeDropDownPreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    goto :goto_5

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_5
    sget-object v5, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_6

    :cond_7
    move v0, v4

    :goto_6
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->setMutePreferenceEnabled(Z)V

    const-string v0, "dnd_enabled"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mDndEnabled:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mDndEnabled:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mDndEnabled:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->isZenModeEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setVisible(Z)V

    :cond_8
    iput-boolean v4, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mIsInUpdateProgress:Z

    const-string v0, "SecSoundModeSettings"

    const-string v4, "updateControls() end"

    invoke-static {v0, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateUIByUser()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;-><init>(Lcom/samsung/android/settings/notification/SecSoundModeSettings;Lcom/samsung/android/settings/notification/SecSoundModeSettings$1;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeUIAsync:Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeUIAsync:Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x1c25

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->init()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v0

    new-instance v7, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    div-int/lit8 v4, v0, 0x3c

    rem-int/lit8 v5, v0, 0x3c

    const/4 v6, 0x1

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v1}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    const v2, 0x7f12166a

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/SemTimePickerDialog;->setTitle(I)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->isInUpdateSoundModeControlsAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mSoundModeUIAsync:Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings$UpdateSoundModeControlsAsync;->cancel(Z)Z

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->releaseListenersAndObserver()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->registerListenersAndObserver()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->isZenModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->setAutoRemoveInsetCategory(Z)V

    return-void
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 3

    const-string v0, "SecSoundModeSettings"

    const-string v1, "onTimeSet from timePicker set new MuteInterval"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_time_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->mAudioManager:Landroid/media/AudioManager;

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v1, p3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMuteInterval(I)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecSoundModeSettings;->updateUIByUser()V

    return-void
.end method
