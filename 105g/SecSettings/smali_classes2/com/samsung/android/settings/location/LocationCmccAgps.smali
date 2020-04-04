.class public Lcom/samsung/android/settings/location/LocationCmccAgps;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "LocationCmccAgps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/location/LocationCmccAgps;->mContentResolver:Landroid/content/ContentResolver;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationCmccAgps;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method


# virtual methods
.method protected addStaticPreferences(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d011d

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/location/LocationCmccAgps;->configureAndInstallNote(Lcom/android/settings/applications/LayoutPreference;Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method configureAndInstallNote(Lcom/android/settings/applications/LayoutPreference;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->setSelectable(Z)V

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;

    const v3, 0x7f1200d6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "agps_mode_home_network"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;

    const v3, 0x7f1200d5

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "agps_mode_all_network"

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;

    const v3, 0x7f1200d4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "agps_mode_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v1, "agps_mode_home_network"

    return-object v1

    :pswitch_0
    const-string v1, "agps_mode_off"

    return-object v1

    :pswitch_1
    const-string v1, "agps_mode_all_network"

    return-object v1

    :pswitch_2
    const-string v1, "agps_mode_home_network"

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f0d011c

    return v0
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3ddc0e2c

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x39a4c3a9

    if-eq v0, v1, :cond_1

    const v1, 0x60a185ca

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "agps_mode_all_network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v0, "agps_mode_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "agps_mode_home_network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/settings/location/LocationCmccAgps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    nop

    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
