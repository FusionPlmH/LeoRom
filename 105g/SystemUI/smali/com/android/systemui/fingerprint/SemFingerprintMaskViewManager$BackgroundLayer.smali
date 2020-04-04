.class Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;
.super Lcom/android/systemui/fingerprint/SemBaseView;
.source "SemFingerprintMaskViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundLayer"
.end annotation


# instance fields
.field private mBottomView:Landroid/view/View;

.field private mCancelButton:Landroid/widget/Button;

.field private mGuideImage:Landroid/widget/ImageView;

.field private mGuideString:Ljava/lang/String;

.field private mGuideText:Landroid/widget/TextView;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mTitleText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;Landroid/os/IBinder;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$700(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/systemui/fingerprint/SemBaseView;-><init>(Landroid/content/Context;Landroid/os/IBinder;Landroid/view/WindowManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mTitleText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mCancelButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideImage:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0xa39

    const v4, 0x1080802

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FP BG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mHashCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public handleRotation(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mBottomView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$700(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mBottomView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    invoke-static {v6, v7, v8}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1300(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;D)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-double v6, v1

    const-wide v8, 0x3fe02de00d1b7176L    # 0.5056

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v6}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1400(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v7}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1500(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v7}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$900(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    nop

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mBottomView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public loadResource()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01f3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mView:Landroid/view/View;

    const v2, 0x7f0a04e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mView:Landroid/view/View;

    const v2, 0x7f0a04e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mBottomView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mView:Landroid/view/View;

    const v2, 0x7f0a04ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "sem_fingerprint_bg_title"

    invoke-static {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sem_fingerprint_bg_ready_description"

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideString:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mView:Landroid/view/View;

    const v2, 0x7f0a04e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mView:Landroid/view/View;

    const v2, 0x7f0a04e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mView:Landroid/view/View;

    const v2, 0x7f0a04e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "sem_cancel_button_shape"

    invoke-static {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mCancelButton:Landroid/widget/Button;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$1;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$2;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer$3;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$800(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mView:Landroid/view/View;

    const/high16 v2, 0x1200000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BackgroundLayer: load resource:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method resetMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method showTemporaryMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method updateIcon(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sem_fingerprint_error_wipe"

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sem_fingerprint_error_move"

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sem_fingerprint_error_timeout"

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->mGuideImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sem_fingerprint_no_match"

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
