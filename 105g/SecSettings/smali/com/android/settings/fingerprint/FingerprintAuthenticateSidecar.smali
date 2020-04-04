.class public Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "FingerprintAuthenticateSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;,
        Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;
    }
.end annotation


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mAuthenticationError:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

.field private mAuthenticationResult:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mListener:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;-><init>(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationResult:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;)Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationError:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

    return-object p1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4c5

    return v0
.end method
