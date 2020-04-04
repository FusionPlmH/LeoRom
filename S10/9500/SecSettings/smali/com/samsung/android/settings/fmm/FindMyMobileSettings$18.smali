.class Lcom/samsung/android/settings/fmm/FindMyMobileSettings$18;
.super Ljava/lang/Object;
.source "FindMyMobileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$18;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$18;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$18;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->access$1500(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.remotecontrol_on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.fmm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FindMyMobileSettings"

    const-string v3, " onCheckedChanged[remotecontrol_on]"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$18;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$18;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->chkboxFlag:Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$18;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x1179

    const-wide/16 v3, 0x3e8

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method
