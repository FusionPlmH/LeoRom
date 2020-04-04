.class public Lcom/android/settings/datetime/TimePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TimePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;
    }
.end annotation


# instance fields
.field private final mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

.field private final mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;

.field private mIsFromSUW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datetime/TimePreferenceController;->mIsFromSUW:Z

    iput-object p2, p0, Lcom/android/settings/datetime/TimePreferenceController;->mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;

    iput-object p3, p0, Lcom/android/settings/datetime/TimePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    iput-boolean p4, p0, Lcom/android/settings/datetime/TimePreferenceController;->mIsFromSUW:Z

    return-void
.end method


# virtual methods
.method public buildTimePicker(Landroid/app/Activity;)Lcom/samsung/android/app/SemTimePickerDialog;
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v7, Lcom/samsung/android/app/SemTimePickerDialog;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v1}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "time"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    const-string/jumbo v0, "time"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x26

    const/16 v1, 0x1290

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/android/settings/datetime/TimePreferenceController;->mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;

    invoke-interface {v0}, Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;->showTimePicker()V

    const/4 v0, 0x1

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/TimePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datetime/TimePreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/datetime/TimePreferenceController;->setTime(II)V

    iget-object v0, p0, Lcom/android/settings/datetime/TimePreferenceController;->mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;

    iget-object v1, p0, Lcom/android/settings/datetime/TimePreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method setTime(II)V
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide v3, 0x1160d1b4800L

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/datetime/TimePreferenceController;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/AlarmManager;->setTime(J)V

    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datetime/TimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->isDisabledByAdmin()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/datetime/TimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->applyEDMDateTimeChangePolicy(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/datetime/TimePreferenceController;->mIsFromSUW:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/datetime/TimePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/TimePreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    return-void
.end method
