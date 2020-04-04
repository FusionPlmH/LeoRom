.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$502(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Z)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v1, 0x190

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$3700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1000(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0xcc

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$900(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$4;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    :cond_0
    return-void
.end method
