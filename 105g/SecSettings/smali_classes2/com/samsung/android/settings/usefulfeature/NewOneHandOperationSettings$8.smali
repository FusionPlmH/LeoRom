.class Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->reduceSizeDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->access$800(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportExclusiveTaskManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->turnOffTalkBack(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->turnOffSwitchAccess(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->access$900(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_magnifier"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->access$1000(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->access$1100(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->access$1200(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->turnOffUniversalSwitch(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->access$1300(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->access$1400(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->access$1500(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->access$1600(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->access$1700(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->access$1800(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->access$700(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;I)V

    :cond_1
    return-void
.end method
