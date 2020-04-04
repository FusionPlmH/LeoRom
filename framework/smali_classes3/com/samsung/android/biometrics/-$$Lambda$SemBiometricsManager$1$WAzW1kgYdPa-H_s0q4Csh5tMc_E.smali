.class public final synthetic Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$WAzW1kgYdPa-H_s0q4Csh5tMc_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/biometrics/SemBiometricsManager$1;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$WAzW1kgYdPa-H_s0q4Csh5tMc_E;->f$0:Lcom/samsung/android/biometrics/SemBiometricsManager$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$WAzW1kgYdPa-H_s0q4Csh5tMc_E;->f$0:Lcom/samsung/android/biometrics/SemBiometricsManager$1;

    invoke-static {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->lambda$onAuthenticationFailed$2(Lcom/samsung/android/biometrics/SemBiometricsManager$1;)V

    return-void
.end method
