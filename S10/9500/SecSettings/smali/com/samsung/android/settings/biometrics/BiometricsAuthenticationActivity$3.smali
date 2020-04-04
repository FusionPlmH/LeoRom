.class Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$3;
.super Ljava/lang/Object;
.source "BiometricsAuthenticationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showBiometricPrompt(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$3;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$3;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$002(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$3;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$900(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$3;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->access$1100(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    return-void
.end method
