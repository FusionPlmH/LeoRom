.class Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;
.super Ljava/lang/Object;
.source "SecFontSizePreferenceFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->createFontSizeView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->access$300(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->access$402(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->access$500(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->getMetricsCategory()I

    move-result v0

    const/16 v2, 0x106c

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/2addr v3, v1

    int-to-long v3, v3

    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->access$200(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    const/16 v3, 0x106c

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->access$200(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    return-void
.end method
