.class public Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KnoxFingerprintPlusActivity.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxFingerprintPlusFragment"
.end annotation


# static fields
.field private static activityObj:Landroid/app/Activity;

.field private static clickedPosition:I

.field public static listFingerID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;


# instance fields
.field private final PREF_DIVIDER:Ljava/lang/String;

.field private final PREF_KNOX_FINGERPRINT_CHECK_ADDED:Ljava/lang/String;

.field private final SWITCH_PREF_ENABLE_FINGERPRINT_PLUS:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private fingerPrintName:Ljava/lang/String;

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

.field private mKnoxEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field public view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->listFingerID:Ljava/util/ArrayList;

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->clickedPosition:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "KnoxFingerprintPlusFragment"

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->TAG:Ljava/lang/String;

    const-string v0, "pref_enable_fingerprint_plus"

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->SWITCH_PREF_ENABLE_FINGERPRINT_PLUS:Ljava/lang/String;

    const-string v0, "prefc_biometrics_divider"

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->PREF_DIVIDER:Ljava/lang/String;

    const-string v0, "pref_knox_fingerprint_check_added"

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->PREF_KNOX_FINGERPRINT_CHECK_ADDED:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->activity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->fingerPrintName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->view:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    return-void
.end method

.method private getFingerprintPlusForKey(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->mUserId:I

    const/4 v2, -0x1

    invoke-static {v0, p1, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setFingerprintPlusForKey(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->mUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private showFingerprintPlusIndexMenu()V
    .locals 12

    const-string v0, "KnoxFingerprintPlusFragment"

    const-string v1, "showFingerprintPlusIndexMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    const v0, 0x7f150064

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->addPreferencesFromResource(I)V

    const-string v0, ""

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->listFingerID:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->access$000()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->access$000()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v6, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    const-string v6, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getFingerprintPlusForKey(Ljava/lang/String;)I

    move-result v1

    const-string v6, "FINGERPRINT_PLUS_STATE"

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getFingerprintPlusForKey(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    if-gtz v1, :cond_1

    :cond_0
    const/4 v3, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v6}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_2
    nop

    sget-object v6, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120a37

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setOrder(I)V

    sget-object v6, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    sget-object v6, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string v7, "key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/knox/SpinnerPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    if-eqz v6, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->access$000()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    iget-object v8, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    nop

    :goto_0
    if-ge v5, v8, :cond_4

    iget-object v9, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v9}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v5, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v10, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->listFingerID:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v10

    if-ne v10, v1, :cond_3

    move v2, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x4

    if-ge v8, v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f1209b7

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v8, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    iget-object v9, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    invoke-virtual {v9, v2}, Lcom/samsung/android/settings/knox/SpinnerPreference;->setFingerPlusIndex(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/knox/SpinnerPreference;->setOrder(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f120686

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/knox/SpinnerPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    aget-object v10, v5, v2

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/knox/SpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    invoke-virtual {v9, v5}, Lcom/samsung/android/settings/knox/SpinnerPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/knox/SpinnerPreference;->setDefaultValue(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/knox/SpinnerPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    sget-object v9, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v9, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    invoke-virtual {v9, v3}, Lcom/samsung/android/settings/knox/SpinnerPreference;->setEnabled(Z)V

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    if-eqz v5, :cond_7

    sget-object v5, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    const-string v6, "pref_knox_fingerprint_check_added"

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1209cd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    sget-object v5, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public static spinnerClickEvent(I)Z
    .locals 6

    sput p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->clickedPosition:I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->access$102(Z)Z

    sget-object v1, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->listFingerID:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->clickedPosition:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x271c

    if-ge v1, v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v4, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "previousStage"

    const-string v4, "FingerprintSettings_register"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->activityObj:Landroid/app/Activity;

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->listFingerID:Ljava/util/ArrayList;

    sget v2, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->clickedPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->activityObj:Landroid/app/Activity;

    const-class v5, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "fingerId"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "userId"

    sget v5, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->mUserId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x24000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v4, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->activityObj:Landroid/app/Activity;

    invoke-virtual {v4, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2016

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v1, 0x7f1207e2

    const v2, 0x7f120742

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    :cond_0
    const-string v0, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getFingerprintPlusForKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->showFingerprintPlusIndexMenu()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->access$102(Z)Z

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    const-string v0, "KnoxFingerprintPlusFragment"

    const-string v1, "KnoxFingerprintPlusFragment onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "KnoxFingerprintPlusFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x271c

    const/16 v1, 0x2711

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    const/16 v1, 0x271a

    if-ne p2, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->access$000()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->access$000()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    nop

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    if-le v5, v1, :cond_0

    move v1, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "FINGERPRINT_PLUS_STATE"

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    const-string v2, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->showFingerprintPlusIndexMenu()V

    goto/16 :goto_3

    :cond_2
    const/16 v1, 0x271b

    if-ne p2, v1, :cond_3

    sput-boolean v2, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->mIsFromRegisterFingerPrintPlus:Z

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->access$102(Z)Z

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "preftype"

    const-string v3, "normaltype"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const-string v0, "KnoxFingerprintPlusFragment"

    const-string v1, "onActivityResult: RESULT_CODE not recognized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    if-ne p1, v0, :cond_9

    const/16 v0, -0x63

    if-ne p2, v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    sget-boolean v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->mIsFromRegisterFingerPrintPlus:Z

    if-eqz v0, :cond_6

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->access$102(Z)Z

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Lcom/samsung/android/settings/knox/RegisterKnoxFingerPlusInfo;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_6
    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    sget v1, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->clickedPosition:I

    if-eq v1, v0, :cond_8

    sget-object v1, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->listFingerID:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v4, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->clickedPosition:I

    if-le v1, v4, :cond_7

    const-string v1, "FINGERPRINT_PLUS_STATE"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    const-string v1, "PREV_FINGER_PLUS_ID"

    sget-object v2, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->listFingerID:Ljava/util/ArrayList;

    sget v4, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->clickedPosition:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    sput v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->clickedPosition:I

    goto :goto_1

    :cond_7
    const-string v0, "KnoxFingerprintPlusFragment"

    const-string v1, "Error, listFingerID size is smaller than clickedPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->showFingerprintPlusIndexMenu()V

    :goto_2
    sput-boolean v3, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->mIsFromRegisterFingerPrintPlus:Z

    goto :goto_3

    :cond_9
    const-string v0, "KnoxFingerprintPlusFragment"

    const-string v1, "onActivityResult: REQUEST_CODE not recognized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_a
    :goto_3
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    sput-object p1, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->activityObj:Landroid/app/Activity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->access$002(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->mUserId:I

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->prefKey:Ljava/lang/String;

    const v0, 0x7f150064

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    sget v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    const-string v0, "KnoxFingerprintPlusFragment"

    const-string v1, "KnoxFingerprintPlusFragment onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_knox_fingerprint_check_added"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->access$102(Z)Z

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/settings/knox/KnoxDedicatedFingerPrintDialog;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "check_added"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v3, 0x271c

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return v2
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/knox/SpinnerPreference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_1
    const-string v0, "KnoxFingerprintPlusFragment"

    const-string v1, "KnoxFingerprintPlusFragment onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6

    const-string v0, "pref_knox_fingerprint_check_added"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    const/4 v0, 0x0

    if-nez p2, :cond_2

    const-string v1, "FINGERPRINT_PLUS_STATE"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/knox/SpinnerPreference;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    const-string v1, ""

    const-string v2, "PREV_FINGER_PLUS_ID"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getFingerprintPlusForKey(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->access$000()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->access$000()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_7

    const-string v0, "FINGERPRINT_PLUS_STATE"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->setFingerprintPlusForKey(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    if-ne v2, v5, :cond_3

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mSelectFingerPreference:Lcom/samsung/android/settings/knox/SpinnerPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/knox/SpinnerPreference;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mCheckAddedFingerPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_7
    :goto_2
    sget v0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0410

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0412

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils$KnoxLogging;->addEvent(IILjava/lang/Object;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    sget v2, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils$KnoxLogging;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_8
    return-void
.end method
