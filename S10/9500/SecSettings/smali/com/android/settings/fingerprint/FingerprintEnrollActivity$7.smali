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
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$7;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->PAUSE:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$7;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$7;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$102(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;)Lcom/android/settings/fingerprint/FingerprintEnrollActivity$EnrollState;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$7;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$2300(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semResumeEnroll()Z

    :cond_0
    return-void
.end method
