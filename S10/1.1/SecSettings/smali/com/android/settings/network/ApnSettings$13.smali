.class Lcom/android/settings/network/ApnSettings$13;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$13;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$13;->this$0:Lcom/android/settings/network/ApnSettings;

    iget-object v2, p0, Lcom/android/settings/network/ApnSettings$13;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v2}, Lcom/android/settings/network/ApnSettings;->access$1900(Lcom/android/settings/network/ApnSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/network/ApnSettings;->access$2502(Lcom/android/settings/network/ApnSettings;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$13;->this$0:Lcom/android/settings/network/ApnSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/network/ApnSettings;->access$2602(Lcom/android/settings/network/ApnSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$13;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v1, v2}, Lcom/android/settings/network/ApnSettings;->access$2702(Lcom/android/settings/network/ApnSettings;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$13;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/settings/network/ApnSettings;->access$2202(Lcom/android/settings/network/ApnSettings;J)J

    goto :goto_0

    :cond_0
    const-string v1, "ApnSettings"

    const-string v2, "SubscriptionManager.getSubId(slotId) is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v0}, Lcom/android/settings/network/ApnSettings;->access$2002(I)I

    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTabListener sCurrentTab = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/network/ApnSettings;->access$2000()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/network/ApnSettings$13;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v3}, Lcom/android/settings/network/ApnSettings;->access$2200(Lcom/android/settings/network/ApnSettings;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " in TabListner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$13;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/network/ApnSettings;->access$2800(Lcom/android/settings/network/ApnSettings;)Lcom/samsung/android/settings/multisim/MultiSimTabInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$13;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/network/ApnSettings;->access$2800(Lcom/android/settings/network/ApnSettings;)Lcom/samsung/android/settings/multisim/MultiSimTabInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/settings/multisim/MultiSimTabInterface;->onTabChanged(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$13;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/network/ApnSettings;->access$2900(Lcom/android/settings/network/ApnSettings;)V

    return-void
.end method
