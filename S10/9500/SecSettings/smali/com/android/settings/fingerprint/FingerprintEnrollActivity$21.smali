.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->startCompleteEffect()V
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

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;->interrupt()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1302(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$LiftFingerMessage;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v1, 0x193

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v3, 0xcd

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1000(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    const/16 v4, 0x3ec

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$5300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$5402(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v4, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$5402(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)I

    :goto_0
    const/16 v4, 0x202a

    invoke-static {v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v5}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$5500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v5

    const/16 v6, 0x2046

    if-eqz v5, :cond_2

    const-wide/16 v7, 0x1

    invoke-static {v4, v6, v7, v8}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    :cond_2
    const-wide/16 v7, 0x2

    invoke-static {v4, v6, v7, v8}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :goto_1
    const-string v4, "FpstFingerprintEnrollActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enrolledCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v6}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$5400(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " | maxCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v5}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$5400(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v5

    const/4 v6, 0x0

    if-ge v5, v0, :cond_5

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$5500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const v2, 0x7f0a0041

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const v2, 0x7f0a064e

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v6}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_3
    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const v2, 0x7f0a0043

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v5}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$5500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const v2, 0x7f0a027f

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v2, 0xd1

    invoke-static {v1, v2, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    :cond_7
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$5500(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const v2, 0x7f0a053a

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$5600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_8

    const v2, 0x7f120f01

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$5600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    return-void
.end method
