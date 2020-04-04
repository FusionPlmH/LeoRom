.class Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$3;
.super Ljava/lang/Object;
.source "SecZenModeDNDAutomationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->updateControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->access$200(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0262

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->access$202(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->access$200(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->access$200(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0848

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f121414

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f130392

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->access$300(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1010038

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x102003f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->access$200(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$3;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->access$200(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
