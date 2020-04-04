.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "FpstFingerprintEnrollActivity"

    const-string v1, "LiftFingerMessage : run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v1, 0x191

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$408(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    const/16 v0, 0x203f

    const/16 v1, 0x2040

    const-wide/16 v2, 0x6

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$502(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Z)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v1, 0xd3

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v1, 0xcb

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v1, 0xd2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1000(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1000(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0xcc

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
