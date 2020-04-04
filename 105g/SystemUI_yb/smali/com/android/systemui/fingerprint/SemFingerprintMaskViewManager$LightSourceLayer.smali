.class Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;
.super Lcom/android/systemui/fingerprint/SemBaseView;
.source "SemFingerprintMaskViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LightSourceLayer"
.end annotation


# instance fields
.field private mGreenIconLayout:Landroid/widget/RelativeLayout;

.field private mImageGreenCircle:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;Landroid/os/IBinder;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

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

    const/16 v3, 0xa3b

    const v4, 0x8000518

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "FP GreenIcon"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public handleRotation(ILandroid/graphics/Point;III)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v1, p5, p3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    sub-int/2addr v1, p3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v1, p5, p3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    sub-int/2addr v1, p3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

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
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->setVisibilityForIcon(I)V

    invoke-super {p0}, Lcom/android/systemui/fingerprint/SemBaseView;->hide()V

    return-void
.end method

.method public loadResource()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "sem_fingerprint_green_view"

    invoke-static {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getLayout(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mGreenIconLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mGreenIconLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "sem_fingerprint_greenIconView"

    invoke-static {v3, v4}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mImageGreenCircle:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const-string v3, "#FF00FF00"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mImageGreenCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mImageGreenCircle:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$800(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mGreenIconLayout:Landroid/widget/RelativeLayout;

    const/high16 v4, 0x1200000

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mGreenIconLayout:Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mView:Landroid/view/View;

    return-void
.end method

.method public setVisibilityForIcon(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".setVisibilityForIcon() called with: visibility = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mImageGreenCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mImageGreenCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateLayoutSpec()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mGreenIconLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$900(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$900(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->updateViewLayout()V

    :cond_0
    return-void
.end method
