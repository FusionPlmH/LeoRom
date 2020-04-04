.class public final synthetic Lcom/samsung/android/bio/fingerprint/-$$Lambda$SemFingerprintManager$i73UDHbAHR89-Kcn0df1FPMx2Yo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

.field private final synthetic f$1:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/-$$Lambda$SemFingerprintManager$i73UDHbAHR89-Kcn0df1FPMx2Yo;->f$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iput-object p2, p0, Lcom/samsung/android/bio/fingerprint/-$$Lambda$SemFingerprintManager$i73UDHbAHR89-Kcn0df1FPMx2Yo;->f$1:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/-$$Lambda$SemFingerprintManager$i73UDHbAHR89-Kcn0df1FPMx2Yo;->f$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/-$$Lambda$SemFingerprintManager$i73UDHbAHR89-Kcn0df1FPMx2Yo;->f$1:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    invoke-static {v0, v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->lambda$handleDefaultError$0(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    return-void
.end method
