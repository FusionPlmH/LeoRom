.class public Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BlueLightFilterSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
.implements Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;
    }
.end annotation


# instance fields
.field private mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

.field private mBlueLightFilterDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

.field private mBlueLightFilterTimeType:I

.field private mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

.field private mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

.field private mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLocationOn:Z

.field private mRunnableForUpdatePreference:Ljava/lang/Runnable;

.field private final mSettingsObserver:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;

.field private mUpdatePreferenceHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mUpdatePreferenceHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mRunnableForUpdatePreference:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updatePreferenceStatusWithDelay(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updatePreferenceStatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method private showLocationOnDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1213a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1213a7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$3;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V

    const v2, 0x7f120774

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$2;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V

    const v2, 0x7f121438

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updatePreferenceStatus()V
    .locals 11

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_type"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blue_light_filter_scheduled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blue_light_filter_on_time"

    const-wide/16 v6, 0x474

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "blue_light_filter_off_time"

    const-wide/16 v8, 0x1a4

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1213ac

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-static {v10, v6, v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v3

    invoke-virtual {v8, v9, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-static {v8, v4, v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_2
    return-void
.end method

.method private updatePreferenceStatusWithDelay(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mRunnableForUpdatePreference:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mUpdatePreferenceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mRunnableForUpdatePreference:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mRunnableForUpdatePreference:Ljava/lang/Runnable;

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$4;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mRunnableForUpdatePreference:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mUpdatePreferenceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mRunnableForUpdatePreference:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateScheduledStatus()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_type"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "blue_light_filter_scheduled"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "blue_light_filter_scheduled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x107e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500a3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "blue_light_filter_turn_on_now"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "blue_light_filter_seekbar"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blue_light_filter_opacity"

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setProgress(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setEnabled(Z)V

    const-string v3, "blue_light_filter_desc"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setSelectable(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setPositionMode(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updateScheduledStatus()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_type"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "blue_light_filter_scheduled"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const-string v6, "blue_light_filter_turn_on_as_scheduled"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v6, "blue_light_filter_auto_schedule"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-ne v3, v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v5, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;)V

    const-string v5, "blue_light_filter_user_schedule"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-ne v3, v1, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v5, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;)V

    const-string v5, "blue_light_filter_on_time"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "blue_light_filter_on_time"

    const-wide/16 v9, 0x474

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string v5, "blue_light_filter_off_time"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "blue_light_filter_on_time"

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "blue_light_filter_off_time"

    const-wide/16 v9, 0x1a4

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-ltz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1213ac

    new-array v11, v1, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-static {v12, v7, v8}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v7, v8}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    :goto_4
    iget-object v9, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v9, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v9, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-nez v4, :cond_5

    const-string v9, "blue_light_filter_auto_schedule"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)Z

    const-string v9, "blue_light_filter_user_schedule"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)Z

    const-string v9, "blue_light_filter_on_time"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)Z

    const-string v9, "blue_light_filter_off_time"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)Z

    :cond_5
    if-eq v3, v1, :cond_6

    const-string v1, "blue_light_filter_on_time"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)Z

    const-string v1, "blue_light_filter_off_time"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)Z

    :cond_6
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 16

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x20

    const-wide/16 v2, 0x5a0

    const-wide/16 v4, 0x0

    const/16 v6, 0xc

    const/16 v7, 0xb

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "blue_light_filter_off_time"

    const-wide/16 v10, 0x1a4

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v4, v8, v4

    if-ltz v4, :cond_0

    cmp-long v2, v8, v2

    if-gez v2, :cond_0

    long-to-int v2, v8

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    long-to-int v2, v8

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :goto_0
    new-instance v2, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v15

    move-object v10, v2

    move-object/from16 v12, p0

    invoke-direct/range {v10 .. v15}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v2}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v2

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "blue_light_filter_on_time"

    const-wide/16 v10, 0x474

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v4, v8, v4

    if-ltz v4, :cond_1

    cmp-long v2, v8, v2

    if-gez v2, :cond_1

    long-to-int v2, v8

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    long-to-int v2, v8

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :goto_1
    new-instance v2, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v15

    move-object v10, v2

    move-object/from16 v12, p0

    invoke-direct/range {v10 .. v15}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v2}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->setListening(Z)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setEnabled(Z)V

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f1213ae

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    const/16 v2, 0x1cf2

    invoke-static {v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "blue_light_filter_scheduled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "blue_light_filter_type"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "location_mode"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    nop

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    if-ne v0, v4, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->onClick()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->onClick()V

    :goto_0
    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "blue_light_filter_scheduled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getMetricsCategory()I

    move-result v0

    const/16 v2, 0x1cf3

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    const-wide/16 v3, 0x1

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x0

    :goto_2
    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return v1

    :cond_6
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTimeType:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removeDialog(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->showDialog(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTimeType:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removeDialog(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->showDialog(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "location_mode"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->showLocationOnDialog()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blue_light_filter_type"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "blue_light_filter_type"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updateRadioButtonStatus(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;)V

    const/16 v1, 0x12c

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updatePreferenceStatusWithDelay(I)V

    const/16 v1, 0x1081

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->setListening(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updateScheduledStatus()V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updatePreferenceStatus()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "blue_light_filter"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "blue_light_filter_opacity"

    const/4 v5, 0x5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setProgress(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setEnabled(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "blue_light_filter_type"

    const/4 v5, 0x2

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "blue_light_filter_scheduled"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-ne v2, v5, :cond_6

    move v5, v1

    goto :goto_2

    :cond_6
    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-ne v2, v1, :cond_8

    goto :goto_3

    :cond_8
    move v1, v3

    :goto_3
    invoke-virtual {v5, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    :cond_9
    return-void
.end method

.method public onStart()V
    .locals 4

    const-string v0, "BlueLightFilterSettings"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.bluelightfilter"

    const-string v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 4

    const-string v0, "BlueLightFilterSettings"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.bluelightfilter"

    const-string v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 12

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v1, p3

    int-to-long v1, v1

    iget v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTimeType:I

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_on_time"

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getMetricsCategory()I

    move-result v3

    const/16 v4, 0x1cf4

    invoke-static {v3, v4, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_off_time"

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getMetricsCategory()I

    move-result v3

    const/16 v4, 0x1cf5

    invoke-static {v3, v4, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blue_light_filter_on_time"

    const-wide/16 v5, 0x474

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "blue_light_filter_off_time"

    const-wide/16 v7, 0x1a4

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1213ac

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-static {v11, v5, v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v6}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    :goto_1
    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v9, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-static {v9, v3, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getStringFromMillis(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public updateRadioButtonStatus(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
