.class Lcom/samsung/android/emergencymode/SemEmergencyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemEmergencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/emergencymode/SemEmergencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/emergencymode/SemEmergencyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.nttdocomo.android.epsmodecontrol.action.CHANGE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->access$300(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getModeType()I

    move-result v5

    if-ne v5, v3, :cond_2

    const/16 v4, 0x200

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {v3, v1, v4, v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->access$200(Lcom/samsung/android/emergencymode/SemEmergencyManager;ZIZ)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, "enabled"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "flag"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v5, "skipdialog"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v3, v4, :cond_8

    const/16 v4, 0x800

    if-ne v3, v4, :cond_4

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    const/16 v4, 0x200

    if-eq v3, v4, :cond_5

    const/16 v4, 0x400

    if-ne v3, v4, :cond_7

    :cond_5
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->access$100()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    const-string v4, "EmergencyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive : trying to ON BCM|UPSM while BCM|UPMS not supported in this model. Flag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;->this$0:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {v4, v1, v3, v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->access$200(Lcom/samsung/android/emergencymode/SemEmergencyManager;ZIZ)V

    :cond_8
    nop

    :cond_9
    :goto_1
    return-void
.end method
