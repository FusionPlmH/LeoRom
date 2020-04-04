.class Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$1;
.super Ljava/lang/Object;
.source "SecEdgeColorBalanceSettingsActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->initEdgeColorBalanceUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->access$100(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)I

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->access$200(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->access$200(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "SecEdgeColorBalanceSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stpoc] change preset : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->access$000(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setEdgeColorBalanceUserIndexTemp(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getEdgeColorBalanceImageFromArray(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    const/16 v3, 0x1d20

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->getMetricsCategory()I

    move-result v4

    int-to-long v5, v0

    invoke-static {v4, v3, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->access$100(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)I

    move-result v4

    if-eq v4, v0, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->access$200(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->access$200(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method
