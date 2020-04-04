.class public Lcom/android/settings/print/PrintSettingsFragment;
.super Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;,
        Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;,
        Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mActivePrintJobsCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mAddNewServiceButton:Landroid/widget/Button;

.field private mAddNewServicePreference:Lcom/android/settingslib/RestrictedPreference;

.field private mEmptyView:Landroid/view/View;

.field private mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

.field private mPrintServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mPrintServicesController:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$2;

    invoke-direct {v0}, Lcom/android/settings/print/PrintSettingsFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/print/PrintSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/android/settingslib/RestrictedPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServicePreference:Lcom/android/settingslib/RestrictedPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Landroid/support/v7/preference/Preference;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/print/PrintSettingsFragment;->enablePrinterPluginService(Landroid/content/Context;Landroid/support/v7/preference/Preference;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private createAddNewServiceIntentOrNull()Landroid/content/Intent;
    .locals 4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "print_service_search_uri"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://search?q=print service plugin"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method private static enablePrinterPluginService(Landroid/content/Context;Landroid/support/v7/preference/Preference;Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "print"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/print/PrintManager;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method private newAddServicePreferenceOrNull()Lcom/android/settingslib/RestrictedPreference;
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12113d

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setTitle(I)V

    const v2, 0x7f0806e5

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setIcon(I)V

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    const-string v2, "print_add_plug_in"

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setPersistent(Z)V

    new-instance v2, Lcom/android/settings/print/PrintSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/print/PrintSettingsFragment$1;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-object v1
.end method

.method private startSubSettingsIfNeeded()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120b28

    return v0
.end method

.method protected getIntentActionString()Ljava/lang/String;
    .locals 1

    const-string v0, "android.settings.ACTION_PRINT_SETTINGS"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PrintSettingsFragment"

    const-string v3, "Unable to start activity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150088

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->addPreferencesFromResource(I)V

    const-string v0, "print_jobs_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string v0, "print_services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->newAddServicePreferenceOrNull()Lcom/android/settingslib/RestrictedPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServicePreference:Lcom/android/settingslib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServicePreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServicePreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesController:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesController:Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method protected onDataSetChanged()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onDataSetChanged()V

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->startSubSettingsIfNeeded()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d0076

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    const v3, 0x7f0a04c0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f121141

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->createAddNewServiceIntentOrNull()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    const v5, 0x7f0a0049

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/print/PrintSettingsFragment;->mAddNewServiceButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    const v5, 0x7f0a022e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.sec.android.app.samsungapps"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f121138

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v5, 0x7f121139

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings/print/PrintSettingsFragment;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
