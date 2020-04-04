.class public final synthetic Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$ylqbFkkjOAg5g6MzWbXKAJ-EIuA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$ylqbFkkjOAg5g6MzWbXKAJ-EIuA;->f$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$ylqbFkkjOAg5g6MzWbXKAJ-EIuA;->f$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->lambda$updateUnlockIcon$3(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
