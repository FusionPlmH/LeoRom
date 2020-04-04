.class Lcom/samsung/android/settings/smartscan/SmartScanTip$1;
.super Ljava/lang/Object;
.source "SmartScanTip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanTip;->initSmartScanTipUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartscan/SmartScanTip;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanTip;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanTip;

    iput-object p2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanTip;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->access$000(Lcom/samsung/android/settings/smartscan/SmartScanTip;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanTip;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->access$100(Lcom/samsung/android/settings/smartscan/SmartScanTip;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanTip;

    invoke-static {v2}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->access$100(Lcom/samsung/android/settings/smartscan/SmartScanTip;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanTip;

    invoke-static {v3}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->access$200(Lcom/samsung/android/settings/smartscan/SmartScanTip;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanTip;

    invoke-static {v2}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->access$300(Lcom/samsung/android/settings/smartscan/SmartScanTip;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const-string v1, "SsstSmartScanTip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScrollView height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanTip;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->access$000(Lcom/samsung/android/settings/smartscan/SmartScanTip;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
