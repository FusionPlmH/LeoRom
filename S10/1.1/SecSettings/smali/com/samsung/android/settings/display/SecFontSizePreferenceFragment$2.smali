.class Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;
.super Ljava/lang/Object;
.source "SecFontSizePreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "SecFontSizePreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---> onKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->access$100(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->getProgress()I

    move-result v0

    const/16 v2, 0x45

    if-eq p2, v2, :cond_2

    const/16 v2, 0x51

    if-eq p2, v2, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->access$100(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->access$100(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgress(IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->access$200(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    :cond_1
    return v1

    :cond_2
    :pswitch_1
    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->access$100(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Lcom/samsung/android/settings/display/widget/IntervalSeekBar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/settings/display/widget/IntervalSeekBar;->setProgress(IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;->this$0:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->access$200(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
