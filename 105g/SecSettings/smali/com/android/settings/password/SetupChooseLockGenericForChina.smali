.class public Lcom/android/settings/password/SetupChooseLockGenericForChina;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "SetupChooseLockGenericForChina.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetupChooseLockGenericForChina$SetupChooseLockGenericForChinaFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/password/SetupChooseLockGenericForChina;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/password/SetupChooseLockGenericForChina;->playScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/password/SetupChooseLockGenericForChina;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/password/SetupChooseLockGenericForChina;->playScript(Ljava/lang/String;)V

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

    const-string v1, "fromSetupwizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0244

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/password/SetupChooseLockGenericForChina;->setContentView(IZ)V

    const v0, 0x7f121666

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetupChooseLockGenericForChina;->setHeaderTitle(I)V

    new-instance v0, Lcom/android/settings/password/SetupChooseLockGenericForChina$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/SetupChooseLockGenericForChina$1;-><init>(Lcom/android/settings/password/SetupChooseLockGenericForChina;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetupChooseLockGenericForChina;->setVoiceGuideButton(Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$OnVoiceGuideListener;)V

    return-void
.end method
