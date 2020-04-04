.class public final synthetic Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VYzkNa08o7_-pTnieY513zKfcwM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/biometrics/SemBiometricsManager$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/SemBiometricsManager$1;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VYzkNa08o7_-pTnieY513zKfcwM;->f$0:Lcom/samsung/android/biometrics/SemBiometricsManager$1;

    iput p2, p0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VYzkNa08o7_-pTnieY513zKfcwM;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VYzkNa08o7_-pTnieY513zKfcwM;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VYzkNa08o7_-pTnieY513zKfcwM;->f$0:Lcom/samsung/android/biometrics/SemBiometricsManager$1;

    iget v1, p0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VYzkNa08o7_-pTnieY513zKfcwM;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$1$VYzkNa08o7_-pTnieY513zKfcwM;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/SemBiometricsManager$1;->lambda$onAcquired$0(Lcom/samsung/android/biometrics/SemBiometricsManager$1;ILjava/lang/String;)V

    return-void
.end method
