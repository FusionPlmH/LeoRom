.class Lcom/samsung/android/settings/lockscreen/AODPreferenceController$3;
.super Ljava/lang/Object;
.source "AODPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->makeAccessibilityDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/AODPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$3;->this$0:Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$3;->this$0:Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->access$200(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportExclusiveTaskManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$3;->this$0:Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->access$300(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$3;->this$0:Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->access$400(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isNotAODSettingTime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$3;->this$0:Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->access$500(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController$3;->this$0:Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->access$600(Lcom/samsung/android/settings/lockscreen/AODPreferenceController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120122

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method
