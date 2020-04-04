.class Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$5;
.super Ljava/lang/Object;
.source "SmartScanSettingsHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->showSmartScanDisclaimerDialog(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialogScroll:Lcom/samsung/android/settings/widget/SecBottomScrollView;

.field final synthetic val$positiveButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/SecBottomScrollView;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$5;->val$dialogScroll:Lcom/samsung/android/settings/widget/SecBottomScrollView;

    iput-object p2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$5;->val$positiveButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$5;->val$dialogScroll:Lcom/samsung/android/settings/widget/SecBottomScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$5;->val$dialogScroll:Lcom/samsung/android/settings/widget/SecBottomScrollView;

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

    const-string v4, "SsstSmartScanSettingsHelper"

    const-string v5, "scrollable : disable button"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$5;->val$positiveButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method
