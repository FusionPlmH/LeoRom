.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$zEhH3LqqT-19Zd416m2f2uIVphA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/FingerprintService;

.field private final synthetic f$1:Lcom/android/server/fingerprint/ClientMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$zEhH3LqqT-19Zd416m2f2uIVphA;->f$0:Lcom/android/server/fingerprint/FingerprintService;

    iput-object p2, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$zEhH3LqqT-19Zd416m2f2uIVphA;->f$1:Lcom/android/server/fingerprint/ClientMonitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$zEhH3LqqT-19Zd416m2f2uIVphA;->f$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$zEhH3LqqT-19Zd416m2f2uIVphA;->f$1:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->lambda$semClientDied$3(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)V

    return-void
.end method
