.class Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity$1;
.super Ljava/lang/Object;
.source "SecDateTimeSettingsSetupWizardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity$1;->this$0:Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity$1;->this$0:Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity$1;->this$0:Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecDateTimeSettingsSetupWizardActivity;->finish()V

    return-void
.end method
