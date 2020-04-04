.class public final synthetic Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$1$I5BWWRJc0Uu6fxE55PDkQzqcUOk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/fingerprint/SemFingerprintViewListener;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/fingerprint/SemFingerprintViewListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$1$I5BWWRJc0Uu6fxE55PDkQzqcUOk;->f$0:Landroid/hardware/fingerprint/SemFingerprintViewListener;

    iput p2, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$1$I5BWWRJc0Uu6fxE55PDkQzqcUOk;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$1$I5BWWRJc0Uu6fxE55PDkQzqcUOk;->f$0:Landroid/hardware/fingerprint/SemFingerprintViewListener;

    iget v1, p0, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$1$I5BWWRJc0Uu6fxE55PDkQzqcUOk;->f$1:I

    invoke-static {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$1;->lambda$onEvent$0(Landroid/hardware/fingerprint/SemFingerprintViewListener;I)V

    return-void
.end method
