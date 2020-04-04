.class public Lcom/samsung/android/settings/general/ResetAccSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ResetAccSettings.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mResetSoftButton:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private final mResetSoftListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetAccSettings;->mResetSoftButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v0, Lcom/samsung/android/settings/general/ResetAccSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/general/ResetAccSettings$1;-><init>(Lcom/samsung/android/settings/general/ResetAccSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetAccSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/general/ResetAccSettings;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/general/ResetAccSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/general/ResetAccSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetAccSettings;->showFinalConfirmation()V

    return-void
.end method

.method private establishResetState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetAccSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0677

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/RoundButtonView;

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetAccSettings;->mResetSoftButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetAccSettings;->mResetSoftButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetAccSettings;->mResetSoftListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 2

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetAccSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_accsettings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetAccSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f1215f7

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const/16 v2, 0x1f53

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1f53

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetAccSettings;->showFinalConfirmation()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetAccSettings;->establishResetState()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d024c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetAccSettings;->mContentView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetAccSettings;->establishResetState()V

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetAccSettings;->mContentView:Landroid/view/View;

    return-object v0
.end method
