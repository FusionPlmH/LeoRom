.class Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$1;
.super Landroid/os/Handler;
.source "AutoHotspotAllowedDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$100(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$100(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$200(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$100(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removed preference:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$000(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1205c1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
