.class public Lcom/samsung/android/settings/display/ScreenResolutionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenResolutionSettings.java"


# instance fields
.field private mApplyButton:Lcom/samsung/android/settings/display/widget/ButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mScreenChangeState:Z

.field private mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

.field private mScreenResolutionDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenChangeState:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/widget/SecMultiButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenChangeState:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/display/ScreenResolutionSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenChangeState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/widget/ButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mApplyButton:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    return-object v0
.end method

.method private init()V
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mApplyButton:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mApplyButton:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120504

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mApplyButton:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenChangeState:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mApplyButton:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    new-instance v1, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mApplyButton:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    new-instance v1, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setOnButtonSelectedListener(Lcom/samsung/android/settings/widget/SecMultiButtonPreference$OnButtonSelectedListener;)V

    return-void
.end method

.method private updateMultiButtonLabels()V
    .locals 21

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object v4, v0

    iget-object v0, v1, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f121296

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f121294

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f121299

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v8, 0x0

    invoke-interface {v0, v8, v4}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget v0, v4, Landroid/graphics/Point;->x:I

    iget v2, v4, Landroid/graphics/Point;->y:I

    iget-object v3, v1, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    goto :goto_0

    :cond_0
    move v10, v8

    :goto_0
    move v9, v10

    int-to-float v10, v2

    int-to-float v11, v0

    div-float/2addr v10, v11

    const v11, 0x3fe38e39

    cmpl-float v11, v10, v11

    if-lez v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    iget-object v11, v1, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-virtual {v11, v5, v6, v7}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setButtonIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    const v12, 0x7f121297

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    const v13, 0x7f121295

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    const v14, 0x7f12129a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-static {v14}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    const/16 v8, 0x5a0

    if-ne v0, v8, :cond_4

    if-eqz v9, :cond_2

    move v8, v2

    goto :goto_1

    :cond_2
    move v8, v0

    :goto_1
    if-eqz v9, :cond_3

    move v15, v0

    goto :goto_2

    :cond_3
    move v15, v2

    :goto_2
    move/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    move-object/from16 v18, v3

    int-to-double v2, v15

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v19

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v14, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double v2, v8

    mul-double v2, v2, v19

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v14, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v2, v15

    const-wide/high16 v19, 0x3fe8000000000000L    # 0.75

    mul-double v2, v2, v19

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v14, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double v2, v8

    mul-double v2, v2, v19

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v14, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v2, v15

    invoke-virtual {v14, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, v8

    invoke-virtual {v14, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_4
    move/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v18, v3

    :goto_3
    iget-object v0, v1, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-virtual {v0, v11, v12, v13}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setTextForButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v8, "ScreenResolutionSettings"

    const-string v9, "getInitialDisplaySize() exception!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d10

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastItemOutlineStrokeEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f1500ec

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->addPreferencesFromResource(I)V

    const-string v0, "screen_resolution_desc"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenResolutionDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenResolutionDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setPositionMode(I)V

    const-string v0, "screen_resolution_seekbar"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v0

    if-eqz p1, :cond_0

    const-string v1, "selected_value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setSelectedPosition(I)V

    goto :goto_0

    :cond_1
    const-string v1, "screen_resolution_seekbar"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->removePreference(Ljava/lang/String;)Z

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->updateMultiButtonLabels()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->init()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mApplyButton:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    if-nez v0, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mApplyButton:Lcom/samsung/android/settings/display/widget/ButtonPreference;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "selected_value"

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecMultiButtonPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecMultiButtonPreference;->getSelectedPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
