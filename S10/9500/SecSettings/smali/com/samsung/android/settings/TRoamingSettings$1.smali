.class Lcom/samsung/android/settings/TRoamingSettings$1;
.super Landroid/database/ContentObserver;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/TRoamingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/TRoamingSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->access$100(Lcom/samsung/android/settings/TRoamingSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/TRoamingSettings;->access$000(Lcom/samsung/android/settings/TRoamingSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->access$300(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/TRoamingSettings;->access$200(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string v0, "TRoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUseDataRoamingObserver DATA_ROAMING is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/TRoamingSettings;->access$000(Lcom/samsung/android/settings/TRoamingSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
