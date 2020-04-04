.class public final synthetic Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$ZiOOB1xbeTqnSAccGgevZEwZE7I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$ZiOOB1xbeTqnSAccGgevZEwZE7I;->f$0:Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$ZiOOB1xbeTqnSAccGgevZEwZE7I;->f$0:Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->lambda$updateVisualCueIcon$1(Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
