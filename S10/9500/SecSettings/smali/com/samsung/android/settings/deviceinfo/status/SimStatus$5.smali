.class Lcom/samsung/android/settings/deviceinfo/status/SimStatus$5;
.super Ljava/lang/Object;
.source "SimStatus.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/status/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$900(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)Lcom/samsung/android/sec_platform_library/FactoryPhone;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$1000(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$1100(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$1200(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$1100(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$1300(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$102(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$1400(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$900(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)Lcom/samsung/android/sec_platform_library/FactoryPhone;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$5;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$1000(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;I)V

    :cond_2
    return-void
.end method
