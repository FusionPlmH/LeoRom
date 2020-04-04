.class Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;
.super Lcom/android/systemui/fingerprint/SemBaseView;
.source "SemFingerprintMaskViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AodFeedbackLayer"
.end annotation


# instance fields
.field private mFailTextView:Landroid/widget/TextView;

.field private mLayoutView:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;Landroid/os/IBinder;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$700(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/systemui/fingerprint/SemBaseView;-><init>(Landroid/content/Context;Landroid/os/IBinder;Landroid/view/WindowManager;)V

    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x8b3

    const v4, 0x8000518

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const-string v1, "FP FeedbackAOD"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public handleRotation(ILandroid/graphics/Point;I)V
    .locals 5

    const/16 v0, 0x51

    const-wide v1, 0x4050800000000000L    # 66.0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x800053

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, p3, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v4, v1, v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1300(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;D)I

    move-result v1

    add-int/2addr v3, v1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1400(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v4}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1500(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, p3, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v4, v1, v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1300(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;D)I

    move-result v1

    add-int/2addr v3, v1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x800055

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, p3, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v4, v1, v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1300(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;D)I

    move-result v1

    add-int/2addr v3, v1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1400(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v4}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1500(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, p3, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v4, v1, v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1300(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;D)I

    move-result v1

    add-int/2addr v3, v1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public loadResource()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "sem_fingerprint_failtext_view"

    invoke-static {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getLayout(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "sem_fingerprint_fail_textview"

    invoke-static {v3, v4}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mFailTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    invoke-static {v3, v4, v5}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1300(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;D)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v3, "#CC1e1e1e"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mFailTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    const/16 v4, 0x1404

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$800(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    const/high16 v4, 0x1200000

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mView:Landroid/view/View;

    sget-boolean v3, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->DEBUG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".loadResource() called, mView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public resetMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showHelpMessage(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".showHelpMessage() called, mFailTextView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mFailTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".showHelpMessage() called, mLayoutView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mFailTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mFailTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer$1;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->wakeLockDuration(Landroid/content/Context;J)V

    :cond_2
    return-void
.end method

.method public updateFailTextView()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mFailTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->DEBUG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateFailTextView() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mFailTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1400(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1500(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mFailTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    const-wide/high16 v3, 0x403a000000000000L    # 26.0

    invoke-static {v2, v3, v4}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1300(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;D)I

    move-result v2

    if-lt v1, v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1300(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;D)I

    move-result v2

    :goto_0
    move v1, v2

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$700(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$700(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mFailTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$700(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutView:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_6
    :goto_2
    return-void
.end method
