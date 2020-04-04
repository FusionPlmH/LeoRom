.class public Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "WarningSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;
    }
.end annotation


# static fields
.field public static KEY_WARNING_PROGRESS:Ljava/lang/String;

.field private static mPadding:I

.field public static sIsEnable:Z


# instance fields
.field private mEndPercent:Landroid/widget/TextView;

.field private mProgress:I

.field private mSeekbar:Landroid/widget/SeekBar;

.field private mStartPercent:Landroid/widget/TextView;

.field private mSubId:I

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

.field private mediumText:Landroid/widget/TextView;

.field private mediumTextBlow:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->sIsEnable:Z

    const-string/jumbo v0, "warning_progress"

    sput-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSubId:I

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSubId:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mProgress:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mStartPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mEndPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumTextBlow:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->updatePolicy(Ljava/lang/String;)V

    return-void
.end method

.method private updatePolicy(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    if-eqz p1, :cond_0

    const-string v2, "off"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getWarningValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    sget-boolean v2, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->sIsEnable:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSubId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    iget v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->setSubId(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->updateDataInfomation()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f150106

    invoke-virtual {p1, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a06ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSeekbar:Landroid/widget/SeekBar;

    const v3, 0x7f0a07c9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mStartPercent:Landroid/widget/TextView;

    const v3, 0x7f0a04bd

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumText:Landroid/widget/TextView;

    const v3, 0x7f0a02b9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mEndPercent:Landroid/widget/TextView;

    const v3, 0x7f0a04be

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumTextBlow:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070157

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mPadding:I

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mStartPercent:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mStartPercent:Landroid/widget/TextView;

    const-string v4, "40%"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mEndPercent:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mEndPercent:Landroid/widget/TextView;

    const-string v4, "100%"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data_warning_set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "off"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mProgress:I

    sput-boolean v2, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->sIsEnable:Z

    const-string v4, "off"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sput-boolean v6, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->sIsEnable:Z

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mStartPercent:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mStartPercent:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumText:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mEndPercent:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mEndPercent:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumTextBlow:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mStartPercent:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mStartPercent:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mEndPercent:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mEndPercent:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumText:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumTextBlow:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_b
    :goto_0
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSeekbar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mProgress:I

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_data_limit"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSubId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "max"

    invoke-virtual {v4, v5, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mProgress:I

    int-to-float v4, v4

    const/high16 v5, 0x42200000    # 40.0f

    add-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v4, v5

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v7, "0.00"

    invoke-direct {v5, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v7, v4

    invoke-virtual {v5, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mProgress:I

    add-int/lit8 v8, v8, 0x28

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mStartPercent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060055

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mEndPercent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumTextBlow:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0x7f120604

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumText:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumTextBlow:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSeekbar:Landroid/widget/SeekBar;

    new-instance v9, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;

    invoke-direct {v9, p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$1;)V

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_c
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6

    const-string v0, "off"

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0138

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v2, p2}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mStartPercent:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mStartPercent:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mEndPercent:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mEndPercent:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumText:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumTextBlow:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mStartPercent:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mStartPercent:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumText:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mEndPercent:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mEndPercent:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumTextBlow:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mediumTextBlow:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_a
    const-string v0, "off"

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mTrafficPresenter:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data_warning_set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->updatePolicy(Ljava/lang/String;)V

    return-void
.end method
