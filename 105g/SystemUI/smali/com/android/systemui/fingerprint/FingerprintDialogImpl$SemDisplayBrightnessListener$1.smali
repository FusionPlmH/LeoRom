.class Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener$1;
.super Landroid/os/FileObserver;
.source "FingerprintDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;-><init>(Landroid/content/Context;Lcom/android/systemui/fingerprint/FingerprintDialogImpl$OnBrightnessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$onEvent$0(Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener$1;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->access$1400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl$OnBrightnessListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$OnBrightnessListener;->onChanged(I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener$1;->this$0:Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;->access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogImpl$SemDisplayBrightnessListener$1$WTyfc1mi_M3xVNrITy2f7Oilhms;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogImpl$SemDisplayBrightnessListener$1$WTyfc1mi_M3xVNrITy2f7Oilhms;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemDisplayBrightnessListener$1;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
