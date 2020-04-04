.class public Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "AdditionalInformationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceWidgetDividerItemDecorator"
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private mAllowDividerAfterLastItem:Z

.field private final mBounds:Landroid/graphics/Rect;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mFooterCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->mFooterCount:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->mAllowDividerAfterLastItem:Z

    sget-object v1, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->ATTRS:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const-string v0, "AdditionalInformationSettings"

    const-string v2, "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->mAllowDividerAfterLastItem:Z

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->mFooterCount:I

    sub-int v4, v2, v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v5}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v5, v6

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0, v6, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setAllowDividerAfterLastItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->mAllowDividerAfterLastItem:Z

    return-void
.end method

.method public setFooterCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->mFooterCount:I

    return-void
.end method
