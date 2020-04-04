.class Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;
.super Ljava/lang/Object;
.source "SmartScanSuwDisclaimer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->setSuwDisclaimerScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

.field final synthetic val$continueArrow:Landroid/widget/ImageView;

.field final synthetic val$continueText:Landroid/widget/TextView;

.field final synthetic val$downArrow:Landroid/widget/ImageView;

.field final synthetic val$nextButton:Landroid/widget/LinearLayout;

.field final synthetic val$showButtonBackground:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;ILandroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    iput p2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$showButtonBackground:I

    iput-object p3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$nextButton:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$downArrow:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$continueText:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$continueArrow:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/SecBottomScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    iget-object v1, v1, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/SecBottomScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sub-int v4, v0, v3

    if-gez v4, :cond_1

    const-string v2, "SsstSmartScanSuwDisclaimer"

    const-string v4, "Scrollable : true"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v4, "SsstSmartScanSuwDisclaimer"

    const-string v5, "Scrollable : false"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$showButtonBackground:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$nextButton:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$nextButton:Landroid/widget/LinearLayout;

    const v5, 0x7f080718

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$downArrow:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$continueText:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$continueArrow:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$downArrow:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$continueText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;->val$continueArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method
