.class Landroid/widget/Editor$PositionListener;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# static fields
.field private static final MAXIMUM_NUMBER_OF_LISTENERS:I = 0x7


# instance fields
.field private mCanMove:[Z

.field private final mDelayTime:I

.field private mNumberOfListeners:I

.field private mPositionHasChanged:Z

.field private mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

.field private mPositionX:I

.field private mPositionXOnScreen:I

.field private mPositionY:I

.field private mPositionYOnScreen:I

.field private mScrollHasChanged:Z

.field final mTempCoords:[I

.field private final mUpdatePosition:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x7

    new-array v0, p1, [Landroid/widget/Editor$TextViewPositionListener;

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    new-array p1, p1, [Z

    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    const/16 p1, 0x12c

    iput p1, p0, Landroid/widget/Editor$PositionListener;->mDelayTime:I

    new-instance p1, Landroid/widget/Editor$PositionListener$1;

    invoke-direct {p1, p0}, Landroid/widget/Editor$PositionListener$1;-><init>(Landroid/widget/Editor$PositionListener;)V

    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->mUpdatePosition:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/widget/Editor$PositionListener;)[Landroid/widget/Editor$TextViewPositionListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/Editor$PositionListener;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/Editor$PositionListener;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    return v0
.end method

.method private updatePosition()V
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v2, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v3

    iget v2, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v3

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionXOnScreen:I

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v3

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionYOnScreen:I

    return-void
.end method


# virtual methods
.method public addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V
    .locals 3

    iget v0, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    return-void

    :cond_1
    if-gez v0, :cond_2

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aput-object p1, v1, v0

    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aput-boolean p2, v1, v0

    iget v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    return-void
.end method

.method public getPositionX()I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    return v0
.end method

.method public getPositionXOnScreen()I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionXOnScreen:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    return v0
.end method

.method public getPositionYOnScreen()I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionYOnScreen:I

    return v0
.end method

.method public onPreDraw()Z
    .locals 8

    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_6

    iget-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_5

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    iget-boolean v4, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    if-eqz v4, :cond_2

    instance-of v4, v2, Landroid/widget/Editor$HandleView;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Landroid/widget/Editor$HandleView;

    invoke-virtual {v4}, Landroid/widget/Editor$HandleView;->isDragging()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/widget/Editor$HandleView;->dismiss()V

    instance-of v5, v4, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$500(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, v4

    check-cast v5, Landroid/widget/Editor$InsertionHandleView;

    invoke-virtual {v5}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    :cond_1
    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$PositionListener;->mUpdatePosition:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$PositionListener;->mUpdatePosition:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    instance-of v4, v2, Landroid/widget/Editor$SelectionHandleView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$500(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    iget v4, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    iget v5, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    iget-boolean v6, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    iget-boolean v7, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    invoke-interface {v2, v4, v5, v6, v7}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    const/4 v0, 0x1

    return v0
.end method

.method public onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    return-void
.end method

.method public removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    return-void
.end method
