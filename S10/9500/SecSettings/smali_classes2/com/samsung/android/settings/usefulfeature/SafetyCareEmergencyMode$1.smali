.class Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$1;
.super Landroid/content/BroadcastReceiver;
.source "SafetyCareEmergencyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$1;->this$0:Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "reason"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$1;->this$0:Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->access$000(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$1;->this$0:Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->access$000(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    return-void
.end method
