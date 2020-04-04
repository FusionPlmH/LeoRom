.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$9;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showAuthenticateResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$9;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$9;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$9;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const v2, 0x7f120a17

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->access$4400(Lcom/android/settings/fingerprint/FingerprintEnrollActivity;ILjava/lang/String;)V

    return-void
.end method
