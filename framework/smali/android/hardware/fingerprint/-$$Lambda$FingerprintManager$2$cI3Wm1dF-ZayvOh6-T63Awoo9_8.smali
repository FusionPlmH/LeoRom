.class public final synthetic Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$cI3Wm1dF-ZayvOh6-T63Awoo9_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field private final synthetic f$1:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$cI3Wm1dF-ZayvOh6-T63Awoo9_8;->f$0:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    iput-object p2, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$cI3Wm1dF-ZayvOh6-T63Awoo9_8;->f$1:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$cI3Wm1dF-ZayvOh6-T63Awoo9_8;->f$0:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    iget-object v1, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$cI3Wm1dF-ZayvOh6-T63Awoo9_8;->f$1:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$2;->lambda$onLockoutReset$0(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method
