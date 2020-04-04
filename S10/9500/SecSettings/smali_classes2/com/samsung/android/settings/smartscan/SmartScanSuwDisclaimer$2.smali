.class Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;
.super Ljava/lang/Object;
.source "SmartScanSuwDisclaimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->initSetupWizardUi()V
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
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;ILandroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    iput-object p2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$downArrow:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$continueText:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$continueArrow:Landroid/widget/ImageView;

    iput p5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$showButtonBackground:I

    iput-object p6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$nextButton:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$downArrow:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$downArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$continueText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$continueArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const-string v0, "SsstSmartScanSuwDisclaimer"

    const-string v2, "onClick : down"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$downArrow:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$continueText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$continueArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$showButtonBackground:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$nextButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->val$nextButton:Landroid/widget/LinearLayout;

    const v1, 0x7f080707

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/SecBottomScrollView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/SecBottomScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecBottomScrollView;->fullScroll(I)Z

    goto :goto_0

    :cond_1
    const-string v0, "SsstSmartScanSuwDisclaimer"

    const-string v2, "onClick : next"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanDisclaimerConfirmedValue(Landroid/content/Context;ZI)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->finish()V

    :cond_3
    :goto_0
    return-void
.end method
