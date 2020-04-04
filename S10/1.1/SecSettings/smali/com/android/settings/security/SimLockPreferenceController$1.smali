.class Lcom/android/settings/security/SimLockPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "SimLockPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/SimLockPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/SimLockPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/security/SimLockPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/security/SimLockPreferenceController$1;->this$0:Lcom/android/settings/security/SimLockPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "SimLockPreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimStateReceiver action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/security/SimLockPreferenceController$1;->this$0:Lcom/android/settings/security/SimLockPreferenceController;

    invoke-static {v0}, Lcom/android/settings/security/SimLockPreferenceController;->access$000(Lcom/android/settings/security/SimLockPreferenceController;)V

    return-void
.end method
