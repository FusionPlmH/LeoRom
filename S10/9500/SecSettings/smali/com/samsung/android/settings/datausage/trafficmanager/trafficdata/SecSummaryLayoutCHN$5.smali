.class Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$5;
.super Ljava/lang/Object;
.source "SecSummaryLayoutCHN.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$5;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$5;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$5;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b015e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$5;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    const-string v2, "SummaryPreferenceCHN"

    const-string v3, "mUpdateTrafficButtonListener onClick"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$5;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_auto_calibration_result"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "SummaryPreferenceCHN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUpdateTrafficButtonListener click, currentStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$5;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "operator_choose_sdk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$5;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "province_choose_sdk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SummaryPreferenceCHN"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---->SubId<-----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "SummaryPreferenceCHN"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---->province<-----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "SummaryPreferenceCHN"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---->operator<-----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    const/4 v7, 0x3

    if-ne v2, v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$5;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-static {v7}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->access$100(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    move-result-object v7

    const-string v8, "donnotshow_checked_flag"

    invoke-virtual {v7, v8, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x1

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$5;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->showWarningDialog(Landroid/os/Bundle;Z)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$5;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->startAutoCalibrationService(I)V

    goto :goto_2

    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$5;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f120e55

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$5;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-static {v7}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$5;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-static {v4, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->access$700(Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method
