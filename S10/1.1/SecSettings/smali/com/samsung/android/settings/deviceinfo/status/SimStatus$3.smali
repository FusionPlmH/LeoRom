.class Lcom/samsung/android/settings/deviceinfo/status/SimStatus$3;
.super Landroid/telephony/PhoneStateListener;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$3;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$3;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$300(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$3;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$400(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$3;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$600(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$3;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$700(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$3;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$800(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/status/SimStatus$3;->this$0:Lcom/samsung/android/settings/deviceinfo/status/SimStatus;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/status/SimStatus;->access$500(Lcom/samsung/android/settings/deviceinfo/status/SimStatus;Landroid/telephony/SignalStrength;)V

    return-void
.end method
