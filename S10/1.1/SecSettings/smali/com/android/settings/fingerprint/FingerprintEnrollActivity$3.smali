.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "FingerprintEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 3

    const-string v0, "FpstFingerprintEnrollActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnrollmentError : errMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , errString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 3

    const-string v0, "FpstFingerprintEnrollActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnrollmentHelp : helpMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , helpString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1400(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 10

    const-string v0, "FpstFingerprintEnrollActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnrollmentProgress : remaining = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1400(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v0

    const/16 v1, 0x64

    rsub-int/lit8 v2, p1, 0x64

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    rsub-int/lit8 v2, p1, 0x64

    invoke-static {v0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1502(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->getConvertedPercent(I)I

    move-result v0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const v4, 0x7f121466

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/CharSequence;

    const-string v6, "%d"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(I)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const v5, 0x7f1209ca

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v6}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-virtual {v3, v5, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Ljava/lang/String;I)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v2

    const/16 v3, 0x50

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2000(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    sget-object v2, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->PAUSE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$102(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->semPauseEnroll()Z

    :cond_5
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v2

    if-ne v2, v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    sget-object v2, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->NONE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$102(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setResult(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$3;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    :cond_7
    :goto_0
    return-void

    :cond_8
    :goto_1
    return-void
.end method
