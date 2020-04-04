.class Lcom/samsung/android/bio/iris/SemIrisManager$2;
.super Ljava/lang/Object;
.source "SemIrisManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;->authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/IBiometricPromptReceiver;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

.field final synthetic val$callback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/bio/iris/SemIrisManager;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$2;->this$0:Lcom/samsung/android/bio/iris/SemIrisManager;

    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$2;->val$callback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$2;->val$callback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method
