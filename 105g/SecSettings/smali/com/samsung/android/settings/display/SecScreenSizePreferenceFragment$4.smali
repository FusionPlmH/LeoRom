.class Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;
.super Ljava/lang/Object;
.source "SecScreenSizePreferenceFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$500(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)Lcom/android/settings/PreviewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings/PreviewPagerAdapter;->setPreviewLayer(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$500(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)Lcom/android/settings/PreviewPagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$600(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$700(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/PreviewPagerAdapter;->SetFontScale(IF)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    iput p2, v0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->mCurrentDensityIndex:I

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$802(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$100(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$300(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->getMetricsCategory()I

    move-result v0

    const/16 v2, 0x1d06

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/2addr v3, v1

    int-to-long v3, v3

    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$400(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$302(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$302(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    const/16 v3, 0x1d06

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$4;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$400(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)V

    return-void
.end method
