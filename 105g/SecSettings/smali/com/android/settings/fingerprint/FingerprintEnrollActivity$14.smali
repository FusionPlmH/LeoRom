.class Lcom/android/settings/fingerprint/FingerprintEnrollActivity$14;
.super Ljava/lang/Object;
.source "FingerprintEnrollActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->showFingerprintKeyboardDialog(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$14;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$14;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollActivity$14;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollActivity;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollActivity;->finish()V

    return-void
.end method
