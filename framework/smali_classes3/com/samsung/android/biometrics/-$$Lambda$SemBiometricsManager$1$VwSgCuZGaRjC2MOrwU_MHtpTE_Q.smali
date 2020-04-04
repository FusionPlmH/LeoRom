.class public final synthetic Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VwSgCuZGaRjC2MOrwU_MHtpTE_Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/biometrics/SemBiometricsManager$1;

.field private final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager$1;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VwSgCuZGaRjC2MOrwU_MHtpTE_Q;->f$0:Lcom/samsung/android/biometrics/SemBiometricsManager$1;

    iput-object p2, p0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VwSgCuZGaRjC2MOrwU_MHtpTE_Q;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VwSgCuZGaRjC2MOrwU_MHtpTE_Q;->f$0:Lcom/samsung/android/biometrics/SemBiometricsManager$1;

    iget-object v1, p0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VwSgCuZGaRjC2MOrwU_MHtpTE_Q;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->lambda$onAuthenticationSucceeded$1(Lcom/samsung/android/biometrics/SemBiometricsManager$1;Landroid/os/Bundle;)V

    return-void
.end method
