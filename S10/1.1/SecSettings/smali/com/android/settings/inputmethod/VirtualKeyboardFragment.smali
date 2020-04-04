.class public final Lcom/android/settings/inputmethod/VirtualKeyboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VirtualKeyboardFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final NO_ICON:Landroid/graphics/drawable/Drawable;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/widget/SecInputMethodPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->NO_ICON:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$3;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$3;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->updateInputMethodPreferenceViewsForKnox(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$updateInputMethodPreferenceViews$0(Ljava/text/Collator;Lcom/samsung/android/settings/widget/SecInputMethodPreference;Lcom/samsung/android/settings/widget/SecInputMethodPreference;)I
    .locals 1

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->compareTo(Lcom/samsung/android/settings/widget/SecInputMethodPreference;Ljava/text/Collator;)I

    move-result v0

    return v0
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    iget-object v0, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v10, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    move v12, v0

    move v0, v11

    :goto_1
    move v13, v0

    const v14, 0x7f0d027d

    if-ge v13, v12, :cond_3

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v2, :cond_2

    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move v7, v11

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v0, 0x1

    move v7, v0

    :goto_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->NO_ICON:Landroid/graphics/drawable/Drawable;

    :goto_4
    new-instance v16, Lcom/samsung/android/settings/widget/SecInputMethodPreference;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, v16

    move-object v4, v9

    move-object v5, v15

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/samsung/android/settings/widget/SecInputMethodPreference$OnSavePreferenceListener;)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v14}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setLayoutResource(I)V

    iget-object v4, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v13, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iget-object v3, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/settings/inputmethod/-$$Lambda$VirtualKeyboardFragment$ELggZWw8_elTt-jdsk0ISyYwg-o;

    invoke-direct {v4, v0}, Lcom/android/settings/inputmethod/-$$Lambda$VirtualKeyboardFragment$ELggZWw8_elTt-jdsk0ISyYwg-o;-><init>(Ljava/text/Collator;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    nop

    :goto_5
    move v3, v11

    if-ge v3, v12, :cond_4

    iget-object v4, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/widget/SecInputMethodPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-static {v4}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->updatePreferenceViews()V

    add-int/lit8 v11, v3, 0x1

    goto :goto_5

    :cond_4
    iget-object v3, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    const v4, 0x7f0806e4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreference;->setIcon(I)V

    iget-object v3, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, v12}, Landroid/support/v7/preference/SecPreference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, v14}, Landroid/support/v7/preference/SecPreference;->setLayoutResource(I)V

    return-void
.end method

.method private updateInputMethodPreferenceViewsForKnox(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v2

    iget-object v0, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    move v5, v0

    move v0, v4

    :goto_1
    move v6, v0

    const v7, 0x7f0d027d

    if-ge v6, v5, :cond_3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v2, :cond_2

    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move v12, v4

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v0, 0x1

    move v12, v0

    :goto_3
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->NO_ICON:Landroid/graphics/drawable/Drawable;

    :goto_4
    new-instance v15, Lcom/samsung/android/settings/widget/SecInputMethodPreference;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v15

    move-object/from16 v9, p1

    move-object v10, v14

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/samsung/android/settings/widget/SecInputMethodPreference$OnSavePreferenceListener;)V

    invoke-virtual {v8, v0}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v7}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setLayoutResource(I)V

    iget-object v7, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iget-object v6, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;

    invoke-direct {v8, v1, v0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;-><init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;Ljava/text/Collator;)V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    nop

    :goto_5
    if-ge v4, v5, :cond_4

    iget-object v6, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/widget/SecInputMethodPreference;

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-static {v6}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v6}, Lcom/samsung/android/settings/widget/SecInputMethodPreference;->updatePreferenceViews()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    iget-object v4, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    const v6, 0x7f0806e4

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/SecPreference;->setIcon(I)V

    iget-object v4, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v4, v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/SecPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x159

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f15013e

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->addPreferencesFromResource(I)V

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string v1, "add_virtual_keyboard_screen"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreference;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreference;

    iput-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    invoke-direct {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->updateInputMethodPreferenceViews()V

    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$1;-><init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;Landroid/app/Activity;Landroid/content/Context;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->updateInputMethodPreferenceViews()V

    :goto_0
    return-void
.end method
