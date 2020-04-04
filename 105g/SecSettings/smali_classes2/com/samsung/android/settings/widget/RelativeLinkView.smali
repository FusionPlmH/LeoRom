.class public Lcom/samsung/android/settings/widget/RelativeLinkView;
.super Landroid/widget/LinearLayout;
.source "RelativeLinkView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLinkContainer:Landroid/widget/LinearLayout;

.field private mParentView:Landroid/view/View;

.field private mTargetFragment:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/widget/RelativeLinkView;)Lcom/android/settings/SettingsPreferenceFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mTargetFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-object v0
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d029d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mParentView:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mParentView:Landroid/view/View;

    const v2, 0x7f0a046a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "RelativeLinkView"

    const-string v1, "The current screen doesn\'t have link data."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    instance-of v0, p1, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mParentView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->setFooterView(Landroid/view/View;Z)V

    move-object v0, p1

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mTargetFragment:Lcom/android/settings/SettingsPreferenceFragment;

    goto :goto_0

    :cond_1
    const-string v0, "RelativeLinkView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to attach relative view. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getRelativeLinkView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "RelativeLinkView"

    const-string v1, "The current screen doesn\'t have link data."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    const v3, 0x7f1303a0

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/support/v7/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mParentView:Landroid/view/View;

    const v2, 0x7f0a046d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v7/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    const v1, 0x7f080703

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/android/settings/widget/RelativeLinkView$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/widget/RelativeLinkView$1;-><init>(Lcom/samsung/android/settings/widget/RelativeLinkView;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public resetLinkData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public setTargetFragment(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mTargetFragment:Lcom/android/settings/SettingsPreferenceFragment;

    :cond_0
    return-void
.end method

.method public setTitleText(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mParentView:Landroid/view/View;

    const v1, 0x7f0a046d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mParentView:Landroid/view/View;

    const v1, 0x7f0a046d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startFooterViewLink(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V
    .locals 4

    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->runType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->runType:Ljava/lang/String;

    const-string v1, "Broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->linkedTitleRes:I

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->linkedTitleRes:I

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :goto_0
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "callerMetric"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSplitViewEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->linkedTitleRes:I

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->linkedTitleRes:I

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :goto_1
    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v2, ":settings:show_fragment_title_resid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    const-string v0, "RelativeLinkView"

    const-string v1, "intent is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "flowId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "callerMetric"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_7
    return-void
.end method
