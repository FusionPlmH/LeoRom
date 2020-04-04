.class Lcom/android/settings/applications/DefaultAppSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DefaultAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/DefaultAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/DefaultAppSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/DefaultAppSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/DefaultAppSettings$1;->this$0:Lcom/android/settings/applications/DefaultAppSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/DefaultAppSettings$1;->this$0:Lcom/android/settings/applications/DefaultAppSettings;

    const-class v1, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;

    invoke-static {v0, v1}, Lcom/android/settings/applications/DefaultAppSettings;->access$000(Lcom/android/settings/applications/DefaultAppSettings;Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/applications/DefaultAppSettings$1;->this$0:Lcom/android/settings/applications/DefaultAppSettings;

    const-string v2, "default_payment_app"

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/DefaultAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultPaymentSettingsPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method
