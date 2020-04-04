.class Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$2;
.super Ljava/lang/Object;
.source "BiometricsRotationGuide.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->initBiometricsRotationGuideGUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$2;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$2;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$2;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$2;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->access$200(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const v2, 0x7f0700b7

    goto :goto_0

    :cond_0
    const v2, 0x7f0700b8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$2;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$2;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    invoke-static {v3}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->access$400(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$2;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->access$300(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const-string v1, "BiometricsRotationGuide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScrollView height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$2;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->access$100(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
