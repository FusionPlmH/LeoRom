.class public final synthetic Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$9r_sCMzryxYIdiwOECTZOwEYNd8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$9r_sCMzryxYIdiwOECTZOwEYNd8;->f$0:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$9r_sCMzryxYIdiwOECTZOwEYNd8;->f$0:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->lambda$authenticate$0(Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V

    return-void
.end method
