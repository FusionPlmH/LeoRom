.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$7;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->hideGuideScreen(I)V
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

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$7;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$7;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$1600(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$7;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/16 v1, 0xc8

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$7;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$800(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILandroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$7;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$7;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4200(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Landroid/view/ViewGroup;Z)V

    return-void
.end method
