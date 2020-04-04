.class Lcom/samsung/android/settings/biometrics/BiometricsLockSetup$1;
.super Ljava/lang/Object;
.source "BiometricsLockSetup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setButtonSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup$1;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->access$002(I)I

    const-string v0, "BiometricsLockSetup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->access$100()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->access$100()Landroid/widget/Button;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->access$000()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->access$100()Landroid/widget/Button;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->access$000()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe851eb851eb852L    # 0.76

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    :cond_0
    return-void
.end method
