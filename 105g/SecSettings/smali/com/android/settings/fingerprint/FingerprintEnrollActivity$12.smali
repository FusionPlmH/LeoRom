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

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v1, 0xd2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$12;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    :cond_0
    return-void
.end method
