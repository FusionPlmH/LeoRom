.class public Lcom/samsung/android/settings/widget/SecInputMethodPreference;
.super Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;
.source "SecInputMethodPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/SecInputMethodPreference$OnSavePreferenceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mHasPriorityInSorting:Z

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

.field private final mIsAllowedByOrganization:Z

.field private final mOnSaveListener:Lcom/samsung/android/settings/widget/SecInputMethodPreference$OnSavePreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/samsung/android/settings/widget/SecInputMethodPreference$OnSavePreferenceListener;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setPersistent(Z)V

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iput-boolean p4, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mIsAllowedByOrganization:Z

    iput-object p5, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mOnSaveListener:Lcom/samsung/android/settings/widget/SecInputMethodPreference$OnSavePreferenceListener;

    if-nez p3, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setWidgetLayoutResource(I)V

    :cond_0
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "from_settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setIntent(Landroid/content/Intent;)V

    :goto_0
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0, p2, p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    nop

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mHasPriorityInSorting:Z

    invoke-virtual {p0, p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getSummaryString()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isImeEnabler()Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "preference_software_update_badge"

    const-string v5, "layout"

    const-string v6, "com.android.settings"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getWidgetLayoutResource()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getWidgetLayoutResource()I

    move-result v2

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method private isNotDefaultIMEAndVoiceIMEInDEX(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSamsungIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTv()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$showDirectBootWarnDialog$2(Lcom/samsung/android/settings/widget/SecInputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method public static synthetic lambda$showDirectBootWarnDialog$3(Lcom/samsung/android/settings/widget/SecInputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method public static synthetic lambda$showSecurityWarnDialog$0(Lcom/samsung/android/settings/widget/SecInputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->isTv()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setCheckedInternal(Z)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$showSecurityWarnDialog$1(Lcom/samsung/android/settings/widget/SecInputMethodPreference;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private setCheckedInternal(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mOnSaveListener:Lcom/samsung/android/settings/widget/SecInputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/samsung/android/settings/widget/SecInputMethodPreference;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->notifyChanged()V

    return-void
.end method

.method private showDirectBootWarnDialog()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f12071c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    new-instance v3, Lcom/samsung/android/settings/widget/-$$Lambda$SecInputMethodPreference$2DlGcPcWKKH1oryZnCAzn3dmzr8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/widget/-$$Lambda$SecInputMethodPreference$2DlGcPcWKKH1oryZnCAzn3dmzr8;-><init>(Lcom/samsung/android/settings/widget/SecInputMethodPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/samsung/android/settings/widget/-$$Lambda$SecInputMethodPreference$ChJis7wZDhlIa3ADjT_Fr3NLXS8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/widget/-$$Lambda$SecInputMethodPreference$ChJis7wZDhlIa3ADjT_Fr3NLXS8;-><init>(Lcom/samsung/android/settings/widget/SecInputMethodPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSecurityWarnDialog()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x1040014

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f120b8b

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    new-instance v4, Lcom/samsung/android/settings/widget/-$$Lambda$SecInputMethodPreference$F-WzjJs1x9KGKtLMz22i81ug5nE;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/widget/-$$Lambda$SecInputMethodPreference$F-WzjJs1x9KGKtLMz22i81ug5nE;-><init>(Lcom/samsung/android/settings/widget/SecInputMethodPreference;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v4, Lcom/samsung/android/settings/widget/-$$Lambda$SecInputMethodPreference$t4JGUlzzgA3aNFiCKM_E6o7m1_E;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/widget/-$$Lambda$SecInputMethodPreference$t4JGUlzzgA3aNFiCKM_E6o7m1_E;-><init>(Lcom/samsung/android/settings/widget/SecInputMethodPreference;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/settings/widget/SecInputMethodPreference;Ljava/text/Collator;)I
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mHasPriorityInSorting:Z

    iget-boolean v1, p1, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mHasPriorityInSorting:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mHasPriorityInSorting:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    return v2
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v7/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->isImeEnabler()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setCheckedInternal(Z)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->isTv()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->isTv()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setCheckedInternal(Z)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->showSecurityWarnDialog()V

    :cond_5
    :goto_1
    return v1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->isImeEnabler()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->TAG:Ljava/lang/String;

    const-string v4, "IME\'s Settings Activity Not Found"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v3, 0x7f12098b

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_0
    return v1
.end method

.method public updatePreferenceViews()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->isImeEnabler()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->shouldAlwaysCheckIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mIsAllowedByOrganization:Z

    if-nez v1, :cond_2

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setEnabled(Z)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v4, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->isDisabledByAdmin()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->isNotDefaultIMEAndVoiceIMEInDEX(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setEnabled(Z)V

    :cond_4
    return-void
.end method
