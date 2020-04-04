.class Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$000(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v5}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v5, v6, v7}, Landroid/app/INotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v6}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v9, "miscellaneous"

    invoke-interface {v6, v7, v8, v9, v4}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, -0x3e8

    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->lockFields(I)V

    iget-object v7, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v7}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v7, v8, v9, v6}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    :cond_0
    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v6}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$100(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v6, v7, v8, v4}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_1
    iget-boolean v5, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v5}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$000(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$200(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v5}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$000(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v1, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$300(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_2
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$400(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpsManager;->resetAllModes()V

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$500(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->getDeviceCareManager()Lcom/samsung/android/settings/fuelguage/DeviceCareManager;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->getDeviceCareManager()Lcom/samsung/android/settings/fuelguage/DeviceCareManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/fuelguage/DeviceCareManager;->verifyFasTable()V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v3}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$600(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    array-length v5, v3

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_5

    aget v7, v3, v6

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-ne v8, v4, :cond_4

    iget-object v8, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v8}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$600(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v8

    invoke-virtual {v8, v7, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    const/16 v1, 0x41

    const/16 v5, 0xefc

    invoke-static {v1, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEnteranceLogging(II)V

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$700(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$2;->this$0:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->access$700(Lcom/android/settings/applications/manageapplications/ResetAppsHelper;)Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper$OnResetAppsDialogListener;->onUpdateAfterResetApps()V

    :cond_6
    return-void
.end method
