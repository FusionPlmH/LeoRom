.class Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;
.super Ljava/lang/Object;
.source "SecFontSizePreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizeLayout()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->access$100(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->access$100(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->access$100(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgress(IZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->access$200(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    :cond_0
    return-void
.end method
