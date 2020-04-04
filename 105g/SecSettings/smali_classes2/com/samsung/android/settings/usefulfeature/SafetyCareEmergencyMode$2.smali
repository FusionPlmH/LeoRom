.class Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$2;
.super Landroid/telephony/PhoneStateListener;
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

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    const-string v0, "SafetyCareEmergencyMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mInitialCallState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->access$100(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SafetyCareEmergencyMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->access$200(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->access$100(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->access$000(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->access$000(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->access$000(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->access$300(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->isEmergencyModeSupported()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    nop

    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->access$000(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode$2;->this$0:Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;->access$000(Lcom/samsung/android/settings/usefulfeature/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_3
    return-void
.end method
