.class Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;
.super Ljava/lang/Object;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->sendBsdcDataForSaLogging()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$screenId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->val$screenId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->val$eventId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->access$000(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v6}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->access$000(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;)J

    move-result-wide v6

    sub-long v0, v2, v6

    :cond_0
    sget-boolean v2, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    const-string v3, "Button"

    iput-object v3, v2, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/bluetooth/Utils;->makeBsdcDataForSaLogging(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    const-string v6, "Callback"

    iput-object v6, v3, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->access$002(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;J)J

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->val$screenId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;->val$eventId:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
