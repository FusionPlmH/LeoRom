.class Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings$1;
.super Ljava/lang/Object;
.source "SecZenModeVisualInterruptionSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;->access$000(Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;->access$200(Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;->access$100(Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x107

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    sget-boolean v2, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange suppressWhenScreenOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;

    invoke-static {v3, v0, v1}, Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;->access$300(Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;ZI)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;->access$400(Lcom/samsung/android/settings/notification/SecZenModeVisualInterruptionSettings;I)V

    return v1
.end method
