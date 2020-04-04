.class Lcom/samsung/android/settings/security/DiagnosticInfoPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "DiagnosticInfoPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/DiagnosticInfoPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/DiagnosticInfoPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/DiagnosticInfoPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/security/DiagnosticInfoPreferenceController$1;->this$0:Lcom/samsung/android/settings/security/DiagnosticInfoPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiagnosticInfoPreferenceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "diagnostic_info_changed"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/security/DiagnosticInfoPreferenceController$1;->this$0:Lcom/samsung/android/settings/security/DiagnosticInfoPreferenceController;

    invoke-static {v3}, Lcom/samsung/android/settings/security/DiagnosticInfoPreferenceController;->access$000(Lcom/samsung/android/settings/security/DiagnosticInfoPreferenceController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
