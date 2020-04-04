.class public final synthetic Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$BHdZ2YVqilUjbvPiRNC3VHr36y8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/biometrics/BiometricPrompt;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/BiometricPrompt;ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$BHdZ2YVqilUjbvPiRNC3VHr36y8;->f$0:Landroid/hardware/biometrics/BiometricPrompt;

    iput p2, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$BHdZ2YVqilUjbvPiRNC3VHr36y8;->f$1:I

    iput-object p3, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$BHdZ2YVqilUjbvPiRNC3VHr36y8;->f$2:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$BHdZ2YVqilUjbvPiRNC3VHr36y8;->f$0:Landroid/hardware/biometrics/BiometricPrompt;

    iget v1, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$BHdZ2YVqilUjbvPiRNC3VHr36y8;->f$1:I

    iget-object v2, p0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$BHdZ2YVqilUjbvPiRNC3VHr36y8;->f$2:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-static {v0, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt;->lambda$sendError$0(Landroid/hardware/biometrics/BiometricPrompt;ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method
