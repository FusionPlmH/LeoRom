.class public Lcom/samsung/android/settings/notification/SecZenModeFooterPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "SecZenModeFooterPreferenceController.java"


# instance fields
.field private final KEY:Ljava/lang/String;

.field private final mTitleRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p4, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p4, p0, Lcom/samsung/android/settings/notification/SecZenModeFooterPreferenceController;->KEY:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/settings/notification/SecZenModeFooterPreferenceController;->mTitleRes:I

    return-void
.end method


# virtual methods
.method protected getFooterText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeFooterPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/notification/SecZenModeFooterPreferenceController;->mTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeFooterPreferenceController;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeFooterPreferenceController;->getFooterText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeFooterPreferenceController;->getFooterText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method
