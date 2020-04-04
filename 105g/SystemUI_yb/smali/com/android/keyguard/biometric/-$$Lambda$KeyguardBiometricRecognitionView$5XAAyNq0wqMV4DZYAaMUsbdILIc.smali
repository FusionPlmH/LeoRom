.class public final synthetic Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$5XAAyNq0wqMV4DZYAaMUsbdILIc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$5XAAyNq0wqMV4DZYAaMUsbdILIc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$5XAAyNq0wqMV4DZYAaMUsbdILIc;

    invoke-direct {v0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$5XAAyNq0wqMV4DZYAaMUsbdILIc;-><init>()V

    sput-object v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$5XAAyNq0wqMV4DZYAaMUsbdILIc;->INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$5XAAyNq0wqMV4DZYAaMUsbdILIc;

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

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->lambda$updateVisualCueIcon$2(Ljava/lang/Throwable;)V

    return-void
.end method
