.class Landroid/hardware/fingerprint/FingerprintManager$1;
.super Landroid/hardware/fingerprint/ISemFingerprintViewCallback$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintManager;->semRegisterFingerprintViewListener(Landroid/hardware/fingerprint/SemFingerprintViewListener;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;

.field final synthetic val$listener:Landroid/hardware/fingerprint/SemFingerprintViewListener;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/SemFingerprintViewListener;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->val$listener:Landroid/hardware/fingerprint/SemFingerprintViewListener;

    invoke-direct {p0}, Landroid/hardware/fingerprint/ISemFingerprintViewCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onEvent$0(Landroid/hardware/fingerprint/SemFingerprintViewListener;I)V
    .locals 1

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    invoke-interface {p0}, Landroid/hardware/fingerprint/SemFingerprintViewListener;->onStarted()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-interface {p0}, Landroid/hardware/fingerprint/SemFingerprintViewListener;->onStopped()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-interface {p0}, Landroid/hardware/fingerprint/SemFingerprintViewListener;->onShow()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-interface {p0}, Landroid/hardware/fingerprint/SemFingerprintViewListener;->onDismiss()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->val$listener:Landroid/hardware/fingerprint/SemFingerprintViewListener;

    new-instance v2, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$1$I5BWWRJc0Uu6fxE55PDkQzqcUOk;

    invoke-direct {v2, v1, p1}, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$1$I5BWWRJc0Uu6fxE55PDkQzqcUOk;-><init>(Landroid/hardware/fingerprint/SemFingerprintViewListener;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
