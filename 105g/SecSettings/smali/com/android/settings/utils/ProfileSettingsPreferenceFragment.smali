.class public abstract Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProfileSettingsPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getIntentActionString()Ljava/lang/String;
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->getManagedProfiles(Landroid/os/UserManager;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settingslib/drawer/UserAdapter;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settingslib/drawer/UserAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    const v3, 0x7f0d0351

    invoke-virtual {p0, v3}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v4, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment$1;-><init>(Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;Lcom/android/settingslib/drawer/UserAdapter;Landroid/widget/Spinner;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
