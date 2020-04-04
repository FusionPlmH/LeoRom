.class Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "SecScreenSizePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "SecScreenSizePreferenceController"

    const-string v1, "mFlipFolderStateReceiver() onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.flipfolder.OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "flipOpen"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->access$002(Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;I)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->access$002(Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;I)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;->access$100(Lcom/samsung/android/settings/display/controller/SecScreenSizePreferenceController;)V

    :cond_1
    return-void
.end method
