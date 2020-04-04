.class public Lcom/samsung/android/settings/display/NightThemeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NightThemeFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;
    }
.end annotation


# instance fields
.field private layoutPreference:Lcom/android/settings/applications/LayoutPreference;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mNightThemeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mNightThemeOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mNightThemeOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mNightThemeSeletedTimeType:I

.field private mNightThemeTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

.field private mNightThemeTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

.field private mNightThemeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private final mSettingsObserver:Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;-><init>(Lcom/samsung/android/settings/display/NightThemeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mSettingsObserver:Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/display/NightThemeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->updateNightThemeScheduledTypePrefrences()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/display/NightThemeFragment;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/display/NightThemeFragment;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/display/NightThemeFragment;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method private getNightThemeScheduledType()I
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme_scheduled_type"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private initUI()V
    .locals 4

    const v0, 0x7f1500b6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->addPreferencesFromResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->setAutoRemoveInsetCategory(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNightThemeEnabled(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "sec_night_theme_turn_on_now"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/NightThemeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    const-string v2, "sec_night_theme_turn_on_as_scheduled"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/NightThemeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    const-string v2, "sec_night_theme_auto_schedule"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/NightThemeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    const-string v2, "sec_night_theme_user_schedule"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/NightThemeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    const-string v2, "sec_night_theme_on_time"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/NightThemeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    const-string v2, "sec_night_theme_off_time"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/NightThemeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->updateNightThemeSwitchPreferences()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->updateNightThemeScheduledTypePrefrences()V

    const-string v2, "sec_night_theme_preview"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/NightThemeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/LayoutPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->layoutPreference:Lcom/android/settings/applications/LayoutPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->layoutPreference:Lcom/android/settings/applications/LayoutPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->layoutPreference:Lcom/android/settings/applications/LayoutPreference;

    const v3, 0x7f0a05f2

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->updatePreviewImageSize()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "sec_display_night_theme_preview.json"

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method

.method private isLocationOnState()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private isNightThemeScheduledTypeSupported()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme_scheduled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private setNightMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/display/NightThemeFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/NightThemeFragment$1;-><init>(Lcom/samsung/android/settings/display/NightThemeFragment;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showLocationOnDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121378

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/NightThemeFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/NightThemeFragment$4;-><init>(Lcom/samsung/android/settings/display/NightThemeFragment;)V

    const v2, 0x7f120771

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/NightThemeFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/NightThemeFragment$3;-><init>(Lcom/samsung/android/settings/display/NightThemeFragment;)V

    const v2, 0x7f121409

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/NightThemeFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/NightThemeFragment$2;-><init>(Lcom/samsung/android/settings/display/NightThemeFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateNightThemeSchdeuledTimePreferences(Z)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/SecPreferenceScreen;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/SecPreferenceScreen;->setVisible(Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme_on_time"

    const-wide/16 v2, 0x474

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_night_theme_off_time"

    const-wide/16 v5, 0x1a4

    invoke-static {v2, v3, v5, v6, v4}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12137d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mContext:Landroid/content/Context;

    invoke-static {v8, v2, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateNightThemeScheduledTypePrefrences()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->isNightThemeScheduledTypeSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setVisible(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/NightThemeFragment;->updateNightThemeSchdeuledTimePreferences(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setVisible(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getNightThemeScheduledType()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/NightThemeFragment;->updateNightThemeSchdeuledTimePreferences(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/NightThemeFragment;->updateNightThemeSchdeuledTimePreferences(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateNightThemeSwitchPreferences()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_night_theme_scheduled"

    invoke-static {v3, v4, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private updatePreviewImageSize()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_1
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v2, v4

    double-to-int v1, v2

    :goto_0
    int-to-double v2, v1

    const-wide v4, 0x3fe48e8a71de69adL    # 0.6424

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d19

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->initUI()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->initUI()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 17

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x20

    const-wide/16 v2, 0x5a0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/16 v8, 0xb

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "display_night_theme_off_time"

    const-wide/16 v11, 0x1a4

    invoke-static {v9, v10, v11, v12, v6}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v9

    cmp-long v4, v9, v4

    if-ltz v4, :cond_0

    cmp-long v2, v9, v2

    if-gez v2, :cond_0

    long-to-int v2, v9

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v8, v2}, Ljava/util/Calendar;->set(II)V

    long-to-int v2, v9

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :goto_0
    new-instance v2, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v16

    move-object v11, v2

    move-object/from16 v13, p0

    invoke-direct/range {v11 .. v16}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v2}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v2

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "display_night_theme_on_time"

    const-wide/16 v11, 0x474

    invoke-static {v9, v10, v11, v12, v6}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v9

    cmp-long v4, v9, v4

    if-ltz v4, :cond_1

    cmp-long v2, v9, v2

    if-gez v2, :cond_1

    long-to-int v2, v9

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v8, v2}, Ljava/util/Calendar;->set(II)V

    long-to-int v2, v9

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :goto_1
    new-instance v2, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v16

    move-object v11, v2

    move-object/from16 v13, p0

    invoke-direct/range {v11 .. v16}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v2}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mSettingsObserver:Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/NightThemeFragment;->setNightMode(I)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f121585

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/NightThemeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    const/16 v1, 0x1d43

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return v4

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "display_night_theme_scheduled"

    invoke-static {v1, v5, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/16 v1, 0x1d44

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->updateNightThemeScheduledTypePrefrences()V

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->isLocationOnState()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getNightThemeScheduledType()I

    move-result v3

    if-ne v3, v4, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    goto :goto_1

    :cond_3
    if-ne v3, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    :cond_4
    :goto_1
    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    :cond_6
    :goto_2
    return v4

    :cond_7
    return v3
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeSeletedTimeType:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->removeDialog(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->showDialog(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeSeletedTimeType:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->removeDialog(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/NightThemeFragment;->showDialog(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1d45

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->isLocationOnState()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_night_theme_scheduled_type"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->updateNightThemeScheduledTypePrefrences()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->showLocationOnDialog()V

    :goto_0
    invoke-static {v1, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "display_night_theme_scheduled_type"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->updateNightThemeScheduledTypePrefrences()V

    invoke-static {v1, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mSettingsObserver:Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/NightThemeFragment$SettingsObserver;->setListening(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "display_night_theme_scheduled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getNightThemeScheduledType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->isLocationOnState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme_scheduled_type"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->updateNightThemeSwitchPreferences()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->updateNightThemeScheduledTypePrefrences()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v1, p3

    int-to-long v1, v1

    iget v3, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeSeletedTimeType:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "display_night_theme_on_time"

    invoke-static {v3, v6, v1, v2, v4}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getMetricsCategory()I

    move-result v3

    const/16 v4, 0x1d46

    invoke-static {v3, v4, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/samsung/android/settings/display/NightThemeFragment;->mNightThemeSeletedTimeType:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "display_night_theme_off_time"

    invoke-static {v3, v6, v1, v2, v4}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NightThemeFragment;->getMetricsCategory()I

    move-result v3

    const/16 v4, 0x1d47

    invoke-static {v3, v4, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_1
    :goto_0
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/display/NightThemeFragment;->updateNightThemeSchdeuledTimePreferences(Z)V

    :cond_2
    return-void
.end method
