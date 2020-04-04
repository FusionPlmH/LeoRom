.class Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$2;
.super Ljava/lang/Object;
.source "SetupWizardBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$2;->this$0:Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$2;->this$0:Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;

    invoke-static {v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->access$000(Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$2;->this$0:Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;

    invoke-static {v1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->access$000(Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$2;->this$0:Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;

    invoke-static {v2}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->access$000(Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$2;->this$0:Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;

    invoke-static {v3}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->access$000(Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v3

    sub-int v4, p5, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    return-void
.end method
