.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showErrorMessage(ILjava/lang/String;)V
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

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1702(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Z)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v1, 0xcb

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    :cond_1
    const-wide/16 v0, 0x82

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FpstFingerprintEnrollActivity"

    const-string v2, "mHideErrorRunnable : Interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v1, 0x190

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0xcc

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v1, 0xce

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method
