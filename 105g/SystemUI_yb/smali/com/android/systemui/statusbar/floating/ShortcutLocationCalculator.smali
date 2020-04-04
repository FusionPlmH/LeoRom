.class public abstract Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;
.super Ljava/lang/Object;
.source "ShortcutLocationCalculator.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->mDisplay:Landroid/view/Display;

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->loadDimens()V

    return-void
.end method


# virtual methods
.method public getAppShortcutIconLocation()Landroid/graphics/Point;
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getScreenRotation()I

    move-result v0

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getIconBottomMargin()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Point;->y:I

    goto :goto_0

    :pswitch_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getIconBottomMargin()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getIconBottomMargin()I

    move-result v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Point;->y:I

    nop

    :goto_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getIconBottomMargin()I
.end method

.method public getScreenRotation()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getShortcutLocation(IIII)Landroid/graphics/Point;
.end method

.method protected abstract loadDimens()V
.end method
