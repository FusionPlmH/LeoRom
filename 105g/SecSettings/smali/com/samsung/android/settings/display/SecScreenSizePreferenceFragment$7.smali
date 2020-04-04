.class Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$7;
.super Ljava/lang/Object;
.source "SecScreenSizePreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$7;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$7;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$900(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$7;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$900(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$7;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$900(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgress(IZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$7;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$400(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)V

    :cond_0
    return-void
.end method
