.class public final synthetic Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$J28kUUqk4eZyAX1dSuzSK-z1JOI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$J28kUUqk4eZyAX1dSuzSK-z1JOI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$J28kUUqk4eZyAX1dSuzSK-z1JOI;

    invoke-direct {v0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$J28kUUqk4eZyAX1dSuzSK-z1JOI;-><init>()V

    sput-object v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$J28kUUqk4eZyAX1dSuzSK-z1JOI;->INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$J28kUUqk4eZyAX1dSuzSK-z1JOI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->lambda$updateUnlockIcon$4(Ljava/lang/Throwable;)V

    return-void
.end method
