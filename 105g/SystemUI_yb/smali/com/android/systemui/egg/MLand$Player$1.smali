.class Lcom/android/systemui/egg/MLand$Player$1;
.super Landroid/view/ViewOutlineProvider;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/egg/MLand$Player;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/MLand$Player;


# direct methods
.method constructor <init>(Lcom/android/systemui/egg/MLand$Player;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Player$1;->this$0:Lcom/android/systemui/egg/MLand$Player;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v2, v0

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v1

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void
.end method
