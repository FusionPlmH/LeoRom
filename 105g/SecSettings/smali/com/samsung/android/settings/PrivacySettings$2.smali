.class Lcom/samsung/android/settings/PrivacySettings$2;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Landroid/support/v14/preference/SecSwitchPreference;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->access$1100(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    if-ne p1, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->access$1200(Lcom/samsung/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/PrivacySettings;->access$1100(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/PrivacySettings;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0x1230

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :cond_1
    return v1
.end method
