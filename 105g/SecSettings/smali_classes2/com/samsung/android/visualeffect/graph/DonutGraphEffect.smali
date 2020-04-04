.class public Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;
.super Landroid/widget/FrameLayout;
.source "DonutGraphEffect.java"


# instance fields
.field private context:Landroid/content/Context;

.field private donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

.field private isSetData:Z

.field private newDetailPie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;"
        }
    .end annotation
.end field

.field private newSimplePie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->isSetData:Z

    const-string v0, "secVisualEffect_Donut"

    const-string v1, "DonutGraphEffect(context)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newSimplePie:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->isSetData:Z

    const-string v0, "secVisualEffect_Donut"

    const-string v1, "DonutGraphEffect(context, attrs)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newSimplePie:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->isSetData:Z

    const-string v0, "secVisualEffect_Donut"

    const-string v1, "DonutGraphEffect(context, attrs, defStyle)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newSimplePie:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public setDirectionRTL(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setDirectionRTL(Z)V

    return-void
.end method
