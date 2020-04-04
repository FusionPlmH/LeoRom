.class public abstract Lcom/fusionleo/LeoX/systemui/widget/MeterBase;
.super Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;
.source "MeterBase.java"


# static fields
.field public static MeterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fusionleo/LeoX/systemui/widget/MeterBase;",
            ">;"
        }
    .end annotation
.end field

.field public static baseX:I

.field public static baseY:I


# instance fields
.field private Selected:Ljava/lang/String;

.field private handler4LongClick:Landroid/os/Handler;

.field private hasMoved:Z

.field public isLongClick:Z

.field private final mTime4LongClick:J

.field public mWindowManager:Landroid/view/WindowManager;

.field private resId:Ljava/lang/String;

.field private runnable4LongClick:Ljava/lang/Runnable;

.field public wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    const/4 v0, 0x0

    sput v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->baseX:I

    sget v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->baseY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/fusionleo/LeoX/systemui/LeoConfigImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->handler4LongClick:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->hasMoved:Z

    iput-boolean v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->isLongClick:Z

    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->mTime4LongClick:J

    sget-object v1, Lcom/fusionleo/LeoX/systemui/widget/-$$Lambda$MeterBase$VSEU-WLi5fD6rP3lZfAsrMStX7E;->INSTANCE:Lcom/fusionleo/LeoX/systemui/widget/-$$Lambda$MeterBase$VSEU-WLi5fD6rP3lZfAsrMStX7E;

    iput-object v1, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->runnable4LongClick:Ljava/lang/Runnable;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0xc0008

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->baseX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->baseY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fusionleo/LeoX/systemui/widget/MeterBase;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic lambda$new$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected abstract Click()V
.end method

.method public MiniButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MiniDrawable(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->resId:Ljava/lang/String;

    iput-object p3, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->Selected:Ljava/lang/String;

    return-void
.end method

.method public MiniDrawable(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->CustomDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public Register(Ljava/lang/String;Lcom/fusionleo/LeoX/systemui/widget/MeterBase;)V
    .locals 1

    sget-object v0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MeterMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public moved()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->hasMoved:Z

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->handler4LongClick:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->runnable4LongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->shrinkStart()V

    return v1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->resId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MiniDrawable(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->handler4LongClick:Landroid/os/Handler;

    iget-object v2, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->runnable4LongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->hasMoved:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->isLongClick:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->Click()V

    :cond_2
    iget-boolean v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->isLongClick:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->hasMoved:Z

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->hasMoved:Z

    iput-boolean v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->isLongClick:Z

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->start()V

    return v1

    :cond_4
    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->Selected:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->MiniDrawable(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->handler4LongClick:Landroid/os/Handler;

    iget-object v2, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->runnable4LongClick:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/animation/AnimationParking;->stop()V

    return v1
.end method

.method public update(II)V
    .locals 2

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateAction(ILjava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoMiniVibratorEnabled:I

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoMiniVibratorLevel:I

    invoke-static {v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoHaptics(Landroid/content/Context;II)V

    move v1, p1

    if-gtz v1, :cond_0

    move v1, p3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I\'m from China"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "developer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/fusionleo/LeoX/systemui/widget/MeterBase;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p2, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :array_0
    .array-data 2
        0x73s
        0x61s
        0x6cs
        0x74s
    .end array-data
.end method
