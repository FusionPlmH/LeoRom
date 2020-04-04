.class public Lcom/samsung/android/settings/display/SecDreamSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecDreamSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;,
        Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;
    }
.end annotation


# static fields
.field private static SCREEN_SAVER_PREVIEW:I

.field private static SCREEN_SAVER_RADIO_BTN:I

.field private static SCREEN_SAVER_SELECT_WHEN_TO_USE:I

.field private static SCREEN_SAVER_SELECT_WHEN_TO_USE_RADIO_BUTTON:I

.field private static SCREEN_SAVER_SWITCH:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackend:Lcom/android/settingslib/dream/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private final mPackageReceiver:Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mScreenSaverObserver:Landroid/database/ContentObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDreamSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;Lcom/samsung/android/settings/display/SecDreamSettings$1;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPackageReceiver:Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/SecDreamSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->refreshFromBackend()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/display/SecDreamSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SecDreamSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_SELECT_WHEN_TO_USE:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_SELECT_WHEN_TO_USE:I

    return p0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_SELECT_WHEN_TO_USE_RADIO_BUTTON:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_SELECT_WHEN_TO_USE_RADIO_BUTTON:I

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/display/SecDreamSettings;)Lcom/android/settingslib/dream/DreamBackend;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_PREVIEW:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_PREVIEW:I

    return p0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_RADIO_BTN:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_RADIO_BTN:I

    return p0
.end method

.method static synthetic access$900(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2

    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    new-instance v1, Lcom/samsung/android/settings/display/SecDreamSettings$3;

    invoke-direct {v1, p0, p5}, Lcom/samsung/android/settings/display/SecDreamSettings$3;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object v0
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121313

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f121318

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f121315

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnDock()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnDock()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    move v1, v2

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12131a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/display/SecDreamSettings$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$5;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/samsung/android/settings/display/SecDreamSettings$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$4;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Lcom/android/settingslib/dream/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const v2, 0x7f121317

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method private initActiveItemIfNeed(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/dream/DreamBackend$DreamInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v4, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iput-boolean v2, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public static isDreamEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v1

    return v1
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private refreshFromBackend()V
    .locals 11

    const-string v0, "refreshFromBackend()"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/SecDreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mRefreshing:Z

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eq v3, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecDreamSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    new-instance v3, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setPositionMode(I)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121652

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12164f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f121650

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v5}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/display/SecDreamSettings;->initActiveItemIfNeed(Ljava/util/List;)V

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_5

    new-instance v8, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-direct {v8, p0, v9, v10}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V

    invoke-virtual {v8, v2}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v9, v6, -0x1

    if-ne v7, v9, :cond_4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->setLastPreference(Ljava/lang/Boolean;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/samsung/android/settings/display/widget/ButtonPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121649

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    const v7, 0x7f0805d8

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonBackGroundResource(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f0601ad

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonTextColor(I)V

    new-instance v7, Lcom/samsung/android/settings/display/SecDreamSettings$6;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$6;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v7}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v7, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    array-length v8, v7

    move v9, v1

    :goto_2
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    invoke-interface {v10, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastItemOutlineStrokeEnabled(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mRefreshing:Z

    return-void
.end method

.method private registerObserver(Landroid/os/Handler;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/display/SecDreamSettings$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/display/SecDreamSettings$1;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screensaver_components"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screensaver_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setDreamEnabled(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p0}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x244

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120b44

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "onActivityCreated(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f130376

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703ae

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f12164f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f121652

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121650

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v6}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v6}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v7, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7}, Lcom/android/settings/widget/SwitchBar;->show()V

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/display/SecDreamSettings;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "onCreate(%s)"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/SecDreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const-string v0, "onCreateDialog(%s)"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/SecDreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    const-string v0, "onCreateOptionsMenu()"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/SecDreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v4, 0x7f12131a

    const/4 v5, 0x0

    new-instance v7, Lcom/samsung/android/settings/display/SecDreamSettings$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$2;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    move-object v2, p0

    move-object v3, p1

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/display/SecDreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/MenuItem;

    aput-object v2, v3, v1

    iput-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "onDestroyView()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPackageReceiver:Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->unregisterObserver()V

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "onResume()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->refreshFromBackend()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPackageReceiver:Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->registerObserver(Landroid/os/Handler;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "onStart()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mRefreshing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->refreshFromBackend()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_SWITCH:I

    sget v0, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_SWITCH:I

    if-eqz p2, :cond_0

    const/16 v1, 0x3e8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_1
    return-void
.end method
