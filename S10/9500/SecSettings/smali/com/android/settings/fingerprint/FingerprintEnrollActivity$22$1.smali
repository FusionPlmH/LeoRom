.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const v1, 0x7f0a0653

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const v2, 0x7f120a25

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v2, 0xcf

    invoke-static {v1, v2, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$22;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$6000(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    return-void
.end method
