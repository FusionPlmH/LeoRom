.class public Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
.super Ljava/lang/Object;
.source "SideSnapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SideSnapTarget"
.end annotation


# static fields
.field public static final FLAG_DISMISS:I = 0x1

.field public static final FLAG_NONE:I


# instance fields
.field public distanceMultiplier:F

.field public final flag:I

.field private final otherRect:Landroid/graphics/Rect;

.field public final position:I

.field private final targetRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;


# direct methods
.method public constructor <init>(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;-><init>(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;ILandroid/graphics/Rect;Landroid/graphics/Rect;IF)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;ILandroid/graphics/Rect;Landroid/graphics/Rect;IF)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->this$0:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->targetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->otherRect:Landroid/graphics/Rect;

    iput p5, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->flag:I

    iput p6, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->distanceMultiplier:F

    return-void
.end method


# virtual methods
.method public getOtherSideBounds(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->otherRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public getSideScreenBounds(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->targetRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public getSideScreenstacksBounds(Landroid/graphics/Rect;Z)V
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->targetRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->this$0:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-static {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->access$000(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->this$0:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-static {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->access$100(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->this$0:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-static {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->access$100(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->this$0:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-static {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->access$100(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->this$0:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-static {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->access$100(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_3
    :goto_0
    return-void
.end method

.method public isDismissEnd()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->this$0:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-static {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->access$500(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDismissStart()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->this$0:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-static {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->access$400(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDismissTarget()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->flag:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFirstSideTarget()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->this$0:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-static {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->access$200(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLastSideTarget()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->this$0:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-static {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->access$300(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
