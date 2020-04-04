.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21$2;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->onAuthenticationError(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21$2;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21$2;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$21;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4700(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V

    return-void
.end method
