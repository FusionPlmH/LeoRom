.class public Lcom/android/settings/accounts/ChooseAccountActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
    }
.end annotation


# instance fields
.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAccountTypesFilter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddAccountGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

.field private final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

.field private mIsFragmentMode:Z

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private final mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mIsFragmentMode:Z

    new-instance v0, Lcom/android/settings/accounts/ChooseAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ChooseAccountActivity$1;-><init>(Lcom/android/settings/accounts/ChooseAccountActivity;)V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/accounts/ChooseAccountActivity;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v10, v1

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "SHOULDN\'T RESOLVE!"

    const-string v3, "SHOULDN\'T RESOLVE!"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;

    const-string v1, "pendingIntent"

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "hasMultipleUsers"

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v5, v0

    invoke-virtual/range {v1 .. v9}, Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method private addEnterpriseDisclosure()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getDeviceOwnerDisclosure()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;->setSelectable(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public static checkDisableContactSync()Ljava/lang/Boolean;
    .locals 12

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigSamsungCloudVariation"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChooseAccountActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cscFeature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v4, v0

    :goto_0
    if-eqz v3, :cond_1

    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget-object v5, v3, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    aget-object v7, v6, v0

    const/4 v8, 0x1

    aget-object v9, v6, v8

    const/4 v10, 0x2

    aget-object v10, v6, v10

    const-string v11, "DisablingSamsungContactSync"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string/jumbo v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSC Check result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private finishWithAccountType(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x122a

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ChooseAccountActivity;->addAccount(Ljava/lang/String;)V

    return-void
.end method

.method private onAuthDescriptionsUpdated()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v3, v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_1

    const/4 v8, 0x0

    move v9, v1

    :goto_1
    iget-object v10, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    array-length v10, v10

    if-ge v9, v10, :cond_1

    if-eqz v7, :cond_0

    iget-object v10, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    aget-object v10, v10, v9

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/settings/accounts/ChooseAccountActivity;->checkDisableContactSync()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v10, "com.osp.app.signin"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    array-length v10, v10

    if-lez v10, :cond_2

    iget-object v10, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v11, "com.android.contacts"

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v8, 0x0

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Web_ConfigSyncSource"

    invoke-virtual {v10, v11, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "org.mozilla.firefox"

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    const/4 v8, 0x0

    :cond_3
    const-string v5, "com.samsung.android.coreapps"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v8, 0x0

    const-string v5, "ChooseAccountActivity"

    const-string v10, "Hide Easysignup account"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v5, "com.samsung.android.mobileservice"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v8, 0x0

    const-string v5, "ChooseAccountActivity"

    const-string v10, "Hide mobileservice account"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "com.google.work"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v8, 0x0

    const-string v5, "ChooseAccountActivity"

    const-string v10, "Hide managed account"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v10, "CscFeature_Contact_SupportWhitePages"

    invoke-virtual {v5, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "com.whitepages.nameid.account"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v8, 0x0

    const-string v5, "ChooseAccountActivity"

    const-string v10, "Hide com.whitepages.nameid.account Account Add Option"

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v10, "CscFeature_VoiceCall_SupportCallProtect"

    invoke-virtual {v5, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "com.att.callprotect.account"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v8, 0x0

    const-string v5, "ChooseAccountActivity"

    const-string v10, "com.att.callprotect.account Account Add Option"

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v8, :cond_9

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v8, 0x0

    :cond_9
    if-eqz v8, :cond_a

    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    invoke-direct {v5, v6, v3}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    const-string v5, "ChooseAccountActivity"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipped pref "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": has no authority we need"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_e

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAccountManagementDisabled(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {v0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_4

    :cond_d
    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    invoke-static {v1}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->finishWithAccountType(Ljava/lang/String;)V

    :goto_4
    goto/16 :goto_8

    :cond_e
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mIsFragmentMode:Z

    if-nez v2, :cond_f

    move v12, v5

    goto :goto_5

    :cond_f
    move v12, v1

    :goto_5
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Lcom/android/settings/accounts/ProviderPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$300(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/accounts/ChooseAccountActivity;->isSignedIn(Ljava/lang/String;)Z

    move-result v11

    move-object v6, v4

    move-object v9, v3

    invoke-direct/range {v6 .. v12}, Lcom/android/settings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)V

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/accounts/ProviderPreference;->checkAccountManagementAndSetDisabled(I)V

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_6

    :cond_10
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->addEnterpriseDisclosure()V

    goto :goto_8

    :cond_11
    const-string v2, "ChooseAccountActivity"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    array-length v4, v3

    move v5, v1

    :goto_7
    if-ge v5, v4, :cond_12

    aget-object v6, v3, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_12
    const-string v3, "ChooseAccountActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No providers found for authorities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    :goto_8
    return-void
.end method

.method private updateAuthDescriptions()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->onAuthDescriptionsUpdated()V

    return-void
.end method


# virtual methods
.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v5, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v5, "ChooseAccountActivity"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "ChooseAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_0
    iget v4, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No icon resource for account type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No icon name for account type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No label resource for account type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No label name for account type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method protected isSignedIn(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "ChooseAccountActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "extra_fragment_mode"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mIsFragmentMode:Z

    const-string v3, "ChooseAccountActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsFragmentMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mIsFragmentMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v3, 0x7f15000e

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->addPreferencesFromResource(I)V

    iget-boolean v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mIsFragmentMode:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    const-string v3, "authorities"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    const-string v3, "account_types"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account_types"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_2

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUm:Landroid/os/UserManager;

    iget-boolean v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mIsFragmentMode:Z

    if-eqz v2, :cond_3

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    iput-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUm:Landroid/os/UserManager;

    const-string v4, "no_modify_accounts"

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f121ba4

    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    :goto_2
    invoke-static {v2, v4, v6, v5}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->updateAuthDescriptions()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/settings/accounts/ProviderPreference;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/accounts/ProviderPreference;

    const-string v1, "ChooseAccountActivity"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ChooseAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to add account of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->finishWithAccountType(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
