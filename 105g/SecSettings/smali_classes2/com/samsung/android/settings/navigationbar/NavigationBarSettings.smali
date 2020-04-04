.class public Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NavigationBarSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAccessibilityObserver:Landroid/database/ContentObserver;

.field private mButtonOrderCategory:Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

.field private mButtonOrderObserver:Landroid/database/ContentObserver;

.field private mButtonOrderPreference:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

.field private mContext:Landroid/content/Context;

.field private mGestureCategory:Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

.field private mGestureHintObserver:Landroid/database/ContentObserver;

.field private mGestureHintPreference:Landroid/support/v14/preference/SecSwitchPreference;

.field private mGestureModeObserver:Landroid/database/ContentObserver;

.field private mGesturePreviewPreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

.field private mHardPressPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mHidebarSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mPressureObserver:Landroid/database/ContentObserver;

.field private mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mPressureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonOrderObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$5;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mAccessibilityObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->removeMenuForExclusiveFunction()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintPreference:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGesturePreviewPreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updateNavigationBarPreference()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private initPreference()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_hide_bar"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigationbar_unlock_with_home_button"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "navigationbar_force_touch_enable"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v6, 0x7f120f1d

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v6, 0x7f120f1c

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string v5, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "navigationbar_pressure_user_level"

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v4, :cond_5

    const v7, 0x7f120f11

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    goto :goto_5

    :cond_5
    const v1, 0x7f120f10

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :goto_5
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->removeMenuForExclusiveFunction()V

    return-void
.end method

.method private initUI()V
    .locals 2

    const v0, 0x7f1500e0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->addPreferencesFromResource(I)V

    const-string v0, "show_hide_bar"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportShowAndHideButton()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "show_hide_bar"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->removePreference(Ljava/lang/String;)Z

    :cond_1
    const-string v0, "gesture_container"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureCategory:Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

    const-string v0, "gesture_preview"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGesturePreviewPreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    const-string v0, "button_container"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonOrderCategory:Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

    const-string v0, "button_order"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonOrderPreference:Lcom/samsung/android/settings/navigationbar/NavigationBarButtonOrderPreference;

    const-string v0, "gesture_hint"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintPreference:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintPreference:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$7;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "navigationbar_hard_press"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string v0, "unlock_with_home_btn"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportForceTouch()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    return-void
.end method

.method private removeMenuForExclusiveFunction()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_a11y_button"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    move v1, v3

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureCategory:Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGesturePreviewPreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureCategory:Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGesturePreviewPreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureCategory:Lcom/samsung/android/settings/widget/SecSubHeaderPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGesturePreviewPreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updateNavigationBarPreference()V

    :goto_1
    return-void
.end method

.method private updateNavigationBarPreference()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->removePreference(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->removePreference(Ljava/lang/String;)Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportShowAndHideButton()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigationbar_hide_bar"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_1
    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_bar_gesture_hint"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    nop

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d2e

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->initUI()V

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->initPreference()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "NavigationBarSettings"

    const-string v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->initUI()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    if-ne p1, v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "navigationbar_hide_bar"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getMetricsCategory()I

    move-result v7

    const/16 v8, 0x1d3d

    if-eqz v1, :cond_0

    move-wide v3, v5

    nop

    :cond_0
    invoke-static {v7, v8, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "navigationbar_unlock_with_home_button"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getMetricsCategory()I

    move-result v7

    const/16 v8, 0x1d3a

    if-eqz v1, :cond_2

    move-wide v3, v5

    nop

    :cond_2
    invoke-static {v7, v8, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-ne p1, v1, :cond_6

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "navigationbar_force_touch_enable"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getMetricsCategory()I

    move-result v7

    const/16 v8, 0x1d40

    if-eqz v1, :cond_4

    move-wide v3, v5

    nop

    :cond_4
    invoke-static {v7, v8, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string v3, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "navigationbar_pressure_user_level"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v1, :cond_5

    const v5, 0x7f120f11

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    const v5, 0x7f120f10

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->initPreference()V

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_key_order"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonOrderObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_while_hidden"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_hint"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_force_touch_enable"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mPressureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mAccessibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mAccessibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_a11y_button"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mAccessibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mPressureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mButtonOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGestureHintObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mAccessibilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
