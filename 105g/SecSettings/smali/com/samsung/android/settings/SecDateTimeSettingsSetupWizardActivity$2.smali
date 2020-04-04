.class Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity$2;
.super Ljava/lang/Object;
.source "SecDateTimeSettingsSetupWizardActivity.java"

# interfaces
.implements Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$OnVoiceGuideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceGuideButtonClicked(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;

    const-string v1, "102_datetime_1_S"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;->access$000(Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVoicePlayerConnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity$2;->this$0:Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;

    const-string v1, "102_datetime_1_S"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;->access$100(Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onVoicePlayerDisconnected()V
    .locals 0

    return-void
.end method
