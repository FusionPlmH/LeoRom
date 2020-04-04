.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$SemDisplayStateManager$ZGNx_vuQKs9_T2xhH-_pQoz3be4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$SemDisplayStateManager$ZGNx_vuQKs9_T2xhH-_pQoz3be4;->f$0:Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$SemDisplayStateManager$ZGNx_vuQKs9_T2xhH-_pQoz3be4;->f$0:Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;->lambda$setLimitedDisplayState$1(Lcom/android/server/fingerprint/FingerprintService$SemDisplayStateManager;)V

    return-void
.end method
