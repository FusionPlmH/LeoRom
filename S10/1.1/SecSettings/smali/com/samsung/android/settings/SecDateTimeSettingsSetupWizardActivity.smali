.class public Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "SecDateTimeSettingsSetupWizardActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;->playScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;->playScript(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "firstRun"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d016b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;->setContentView(I)V

    const v0, 0x7f12065e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;->setHeaderTitle(I)V

    new-instance v0, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity$1;-><init>(Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;)V

    const v1, 0x7f120f15

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;->setMainActionButton(ILandroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity$2;-><init>(Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;->setVoiceGuideButton(Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$OnVoiceGuideListener;)V

    return-void
.end method
