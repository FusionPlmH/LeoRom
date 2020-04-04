.class public Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OnlineHelpPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnlineHelpPref:Landroid/support/v7/preference/Preference;

.field onPreferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mOnlineHelpPref:Landroid/support/v7/preference/Preference;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$4;-><init>(Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->onPreferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mOnlineHelpPref:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static isSupportCseriesUX()Z
    .locals 2

    const-string v0, "galaxy_C"

    const-string v1, "galaxy_7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mOnlineHelpPref:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mOnlineHelpPref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mOnlineHelpPref:Landroid/support/v7/preference/Preference;

    iget-object v2, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    iget v1, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mOnlineHelpPref:Landroid/support/v7/preference/Preference;

    iget v2, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mOnlineHelpPref:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->onPreferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "device_info_online_help"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->isSupportCseriesUX()Z

    move-result v0

    return v0
.end method

.method public showOnlineHelpDialog()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0285

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a065f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v2, 0x7f0a04c2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120f0d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121ba2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "onlinehelp_show_dialog"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1213de

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f120516

    new-instance v8, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$3;

    invoke-direct {v8, p0, v1, v4}, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$3;-><init>(Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f120474

    new-instance v8, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$2;-><init>(Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController$1;-><init>(Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/OnlineHelpPreferenceController;->mOnlineHelpPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "OnlineHelpPreferenceController"

    const-string v8, "Activity Not Found"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
