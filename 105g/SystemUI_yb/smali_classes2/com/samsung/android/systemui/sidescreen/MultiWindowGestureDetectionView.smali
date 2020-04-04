.class public Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;
.super Landroid/widget/FrameLayout;
.source "MultiWindowGestureDetectionView.java"


# instance fields
.field private final mLocationOnScreen:[I

.field private mWindowFrame:Landroid/graphics/Rect;


# direct methods
.method static synthetic access$000(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;->mLocationOnScreen:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;->mWindowFrame:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method getWindowFrame()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetectionView;->mWindowFrame:Landroid/graphics/Rect;

    return-object v0
.end method
