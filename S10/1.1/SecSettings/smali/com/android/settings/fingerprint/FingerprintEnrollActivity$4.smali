.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->eventProcess(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

.field final synthetic val$evtId:I

.field final synthetic val$evtMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iput p2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->val$evtId:I

    iput-object p3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->val$evtMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->val$evtId:I

    const/16 v1, 0x66

    const/16 v2, 0x67

    const/16 v3, 0x68

    const/16 v4, 0x2040

    const/16 v5, 0x203f

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_1

    const/16 v2, 0xce

    const/16 v3, 0xcb

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_0
    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "eventId[FINGERPRINT_ACQUIRED_CAPTURE_FINGER_LEAVE_TIMEOUT]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4408(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v8, "eventId[FINGERPRINT_ACQUIRED_CAPTURE_SUCCESS]"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x1

    invoke-static {v5, v4, v8, v9}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4308(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0, v2, v6}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0, v7}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1702(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Z)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->interrupt()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0, v6}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1302(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1102(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Z)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-direct {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1302(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->start()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1000(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0xcc

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1000(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "eventId[FINGERPRINT_ACQUIRED_CAPTURE_FINGER_LEAVE]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0, v7}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1102(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Z)Z

    goto/16 :goto_1

    :pswitch_4
    goto/16 :goto_1

    :pswitch_5
    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v4, "eventId[FINGERPRINT_ACQUIRED_CAPTURE_STARTED]"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/os/PowerManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v7, v7}, Landroid/os/PowerManager;->userActivity(JII)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v4, 0x12c

    invoke-static {v0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4000(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->interrupt()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0, v6}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1302(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    :cond_6
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0, v7}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1102(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Z)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0, v2, v6}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0, v7}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1702(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Z)Z

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V

    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setFingerStatus(I)V

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "eventId[FINGERPRINT_ACQUIRED_CAPTURE_READY]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setFingerStatus(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0, v6}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3502(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_a
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->interrupt()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0, v6}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1302(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    :cond_b
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3502(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;)V

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3602(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x14a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->val$evtMsg:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    const-wide/16 v2, 0x2

    invoke-static {v5, v4, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3208(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v0

    const/16 v2, 0x3c

    if-ge v0, v2, :cond_d

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2000(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3400(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    const/16 v2, 0x65

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v0

    if-gt v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const v3, 0x7f121469

    invoke-virtual {v1, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const v3, 0x7f1209d9

    invoke-virtual {v1, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V

    goto :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->val$evtMsg:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V

    goto :goto_1

    :pswitch_a
    const-wide/16 v2, 0x3

    invoke-static {v5, v4, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3108(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->val$evtMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V

    goto :goto_1

    :pswitch_b
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->val$evtMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V

    goto :goto_1

    :pswitch_c
    const-wide/16 v0, 0x5

    invoke-static {v5, v4, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3008(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->val$evtMsg:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V

    goto :goto_1

    :pswitch_d
    const-wide/16 v0, 0x4

    invoke-static {v5, v4, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2808(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->val$evtMsg:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V

    goto :goto_1

    :pswitch_e
    nop

    :cond_f
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2711
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
