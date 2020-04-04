.class public Lcom/samsung/android/internal/policy/SideScreenModeUtils;
.super Ljava/lang/Object;
.source "SideScreenModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMenuMode;,
        Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenDockSide;,
        Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
    }
.end annotation


# static fields
.field public static final BOTTOM_SIDE:I = 0x1

.field public static final DOCKED_MODE:I = 0x2

.field public static final FIXED_MODE:I = 0x1

.field public static final FLAG_MOVING_TOP_TASK_NOT_ALLOW_DOCKING:I = 0x1

.field private static FOCUS_MODE_SCALE:F = 0.0f

.field public static final MENU_MODE_EDIT:I = 0x2

.field public static final MENU_MODE_FOCUS:I = 0x3

.field public static final MENU_MODE_HIDDEN:I = 0x0

.field public static final MENU_MODE_STANDBY:I = 0x1

.field public static final RIGHT_SIDE:I

.field public static SIDE_SCREEN_STACK_DIVIDER_INSET:I

.field public static SIDE_SCREEN_STACK_GAP:I

.field public static SIDE_SCREEN_WIDTH:I

.field public static final SLIDE_OVER_MODE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x242

    sput v0, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_WIDTH:I

    const/16 v0, 0xb

    sput v0, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_STACK_GAP:I

    const/16 v0, 0x13

    sput v0, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_STACK_DIVIDER_INSET:I

    const v0, 0x3f99999a    # 1.2f

    sput v0, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->FOCUS_MODE_SCALE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dockSideToWindowManagerDockSide(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x4

    return v0

    :pswitch_1
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs excludeSideScreenBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;I[Landroid/graphics/Rect;)V
    .locals 5

    if-eqz p1, :cond_4

    array-length v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p4, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne p0, v4, :cond_3

    if-nez p3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static getMenuWindowingMode(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x65

    return v0

    :pswitch_1
    const/16 v0, 0x64

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa33
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs getOtherSideBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;[Landroid/graphics/Rect;)V
    .locals 4

    if-eqz p1, :cond_2

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    if-ne p0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getScaledStackBounds(IIZLandroid/graphics/Rect;)V
    .locals 8

    const/16 v0, 0x64

    if-ne p0, v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->FOCUS_MODE_SCALE:F

    if-eqz p2, :cond_0

    sget v0, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->FOCUS_MODE_SCALE:F

    nop

    :cond_0
    goto :goto_0

    :cond_1
    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-eqz p2, :cond_2

    sget v0, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->FOCUS_MODE_SCALE:F

    nop

    :cond_2
    move v3, v0

    sget v0, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->FOCUS_MODE_SCALE:F

    goto :goto_0

    :cond_3
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sget v3, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->FOCUS_MODE_SCALE:F

    move v0, v3

    :goto_0
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v4, v3, v0, v6, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {v5, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v5, p3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static getSideScreenBounds(Landroid/graphics/Rect;ZZ)Landroid/graphics/Rect;
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    sget v5, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_WIDTH:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_1

    sget v2, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_WIDTH:I

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    sget v6, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_WIDTH:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_1

    sget v2, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_WIDTH:I

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getSideScreenStackBounds(ILandroid/graphics/Rect;ZZI)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-nez p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x65

    if-ne p0, v2, :cond_2

    if-eqz v1, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_STACK_GAP:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget v4, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_STACK_GAP:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    if-eqz v1, :cond_3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_STACK_GAP:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_3
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget v4, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_STACK_GAP:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    invoke-static {p0, p4, p2, v0}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getScaledStackBounds(IIZLandroid/graphics/Rect;)V

    :cond_5
    return-object v0
.end method

.method public static isMenuWindow(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa33
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isSideScreenWindowingMode(I)Z
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_1

    const/16 v0, 0x65

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static menuModeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "FOCUS"

    return-object v0

    :pswitch_1
    const-string v0, "EDIT"

    return-object v0

    :pswitch_2
    const-string v0, "STANDBY"

    return-object v0

    :pswitch_3
    const-string v0, "HIDDEN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "there is not mode. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "DOCKED_MODE"

    return-object v0

    :pswitch_1
    const-string v0, "FIXED_MODE"

    return-object v0

    :pswitch_2
    const-string v0, "SLIDE_OVER_MODE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
