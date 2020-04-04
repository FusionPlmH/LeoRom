.class public Lcom/samsung/android/settings/easymode/EasyModeApp;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EasyModeApp.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mApplyButton:Lcom/samsung/android/settings/display/widget/ButtonPreference;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mEasyModePreviewPreference:Lcom/android/settings/applications/LayoutPreference;

.field private mEasymodeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

.field private mHasEasyLauncher:Z

.field private mHelpTextView:Landroid/widget/TextView;

.field private mImageContainer:Landroid/widget/LinearLayout;

.field private mIsSharedDevice:Z

.field private mIsShowNaviKey:Z

.field private mModeState:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrevModeState:I

.field private mPreviewImage:Landroid/graphics/drawable/Drawable;

.field private mPreviewImageView:Landroid/widget/ImageView;

.field private mStandardModeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsShowNaviKey:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->goToPersonal()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/easymode/EasyModeApp;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyLauncher(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->startLauncher()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/easymode/EasyModeApp;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPrevModeState:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/easymode/EasyModeApp;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/easymode/EasyModeApp;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isEasyLauncher()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mAm:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->showPinWindowToast()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->disableEasyMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->enableEasyMode()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/easymode/EasyModeApp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    return v0
.end method

.method private applyDisplayDensity(Z)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDualDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setDualDisplayEasyModeDensity(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2, v0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setSelectedScreenResolution(Landroid/content/Context;IZI)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setSelectedScreenResolution(Landroid/content/Context;IZI)V

    :goto_0
    return-void
.end method

.method private disableEasyMode()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyLauncher(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyMode(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v1}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->setStandardFont()V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->applyDisplayDensity(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->startLauncher()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private enableEasyMode()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EasyModeApp"

    const-string v1, "can\'t enable easy mode due to mobile keyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyLauncher(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyMode(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v1}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->setEasyFont()V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->applyDisplayDensity(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->startLauncher()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getHomeComponentSet()[Landroid/content/ComponentName;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v2, v4, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isKnoxMode()Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v1, v4, [Landroid/content/ComponentName;

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.easylauncher"

    const-string v5, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isDualFolderType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isZeroLauncher(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.launcher"

    const-string v5, "com.android.launcher2.Launcher"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v3

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.launcher"

    const-string v5, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    aput-object v5, v1, v3

    const-string v6, "EasyModeApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "make homeComponentSet ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1
.end method

.method private getNewHomeComponent(Z)Landroid/content/ComponentName;
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.launcher"

    const-string v2, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "com.sec.android.app.launcher"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.easylauncher"

    const-string v3, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "com.sec.android.app.easylauncher"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isDCMhome(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.nttdocomo.android.dhome"

    const-string v3, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isZeroLauncher(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.launcher"

    const-string v3, "com.android.launcher2.Launcher"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    :goto_0
    return-object v0
.end method

.method private getPreviewImageResId()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsShowNaviKey:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNewMessageClientInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0802d7

    :goto_0
    goto :goto_1

    :cond_0
    const v0, 0x7f0802d6

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0802d3

    goto :goto_0

    :cond_2
    const v0, 0x7f0802d2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNewMessageClientInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0802d9

    goto :goto_0

    :cond_4
    const v0, 0x7f0802d8

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0802d5

    goto :goto_0

    :cond_6
    const v0, 0x7f0802d4

    :goto_1
    return v0
.end method

.method private goToPersonal()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isKnoxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "knox.container.proxy.COMMAND_SWITCH_PROFILE"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string v1, "EasyModeApp"

    const-string v2, "Current mode is knox. Go out to personal to change launcher"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x4b

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EasyModeApp"

    const-string v3, "exception while sleeping"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private initPreference()V
    .locals 4

    const v0, 0x7f1500bb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->addPreferencesFromResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setAutoRemoveInsetCategory(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_switch"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPrevModeState:I

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsShowNaviKey:Z

    const-string v1, "easy_mode_preview"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModePreviewPreference:Lcom/android/settings/applications/LayoutPreference;

    const-string/jumbo v1, "standard_mode_button"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v1, "easy_mode_button"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasymodeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasymodeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasymodeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->seslSetRoundedBg(I)V

    const-string v1, "easy_mode_apply_button"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mApplyButton:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mApplyButton:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->seslSetSubheaderRoundedBg(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mApplyButton:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120504

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mApplyButton:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    new-instance v1, Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$1;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModePreviewPreference:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a05ef

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mImageContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModePreviewPreference:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0375

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModePreviewPreference:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a05ee

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getPreviewImageResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isDefaultLauncher(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1207b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1207b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1207b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1207b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isDefaultLauncher(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mImageContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mImageContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mImageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mImageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0805c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasymodeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    const-string v0, "EasyModeApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SharedDevice: disableButton "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setRadioButtonState(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastItemOutlineStrokeEnabled(Z)V

    return-void
.end method

.method private isEasyLauncher()Z
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.easylauncher"

    const-string v2, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private isKnoxMode()Z
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v2
.end method

.method private isMobileKeyboardCovered()Z
    .locals 9

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120e67

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1207af

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v3

    :cond_0
    return v1
.end method

.method private setEasyLauncher(Z)V
    .locals 5

    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEasyLauncher isEasyLauncherEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getHomeComponentSet()[Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getNewHomeComponent(Z)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x100000

    invoke-virtual {v3, v0, v4, v1, v2}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.method private setEasyMode(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "easymode"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "easymode_from"

    const-string/jumbo v4, "settings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "easymode"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "easymode_from"

    const-string/jumbo v4, "settings"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setRadioButtonState(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasymodeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    :goto_0
    return-void
.end method

.method private showPinWindowToast()V
    .locals 6

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "tw_lock_to_app_toast_accessible"

    const-string/jumbo v4, "string"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_0
    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "tw_lock_to_app_toast"

    const-string/jumbo v4, "string"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "sem_lock_to_app_toast_accessible"

    const-string/jumbo v4, "string"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "sem_lock_to_app_toast"

    const-string/jumbo v4, "string"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method

.method private startLauncher()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iput v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasymodeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasymodeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-ne p1, v0, :cond_1

    iput v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasymodeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setChecked(Z)V

    :cond_1
    :goto_0
    const-string v0, "EasyModeApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckedChanged mModeState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mApplyButton:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iget v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    iget v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPrevModeState:I

    if-eq v3, v4, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x120c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initPreference()V

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "EasyModeApp"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.easylauncher"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    const-string v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has easy launcher:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initPreference()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasymodeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x120e

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isEasyModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initView()V

    return-void
.end method
