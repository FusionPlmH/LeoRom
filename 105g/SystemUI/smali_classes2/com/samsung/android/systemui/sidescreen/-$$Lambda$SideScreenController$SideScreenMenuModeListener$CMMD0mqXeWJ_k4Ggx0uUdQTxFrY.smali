.class public final synthetic Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenMenuModeListener$CMMD0mqXeWJ_k4Ggx0uUdQTxFrY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenMenuModeListener$CMMD0mqXeWJ_k4Ggx0uUdQTxFrY;->f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;

    iput p2, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenMenuModeListener$CMMD0mqXeWJ_k4Ggx0uUdQTxFrY;->f$1:I

    iput p3, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenMenuModeListener$CMMD0mqXeWJ_k4Ggx0uUdQTxFrY;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenMenuModeListener$CMMD0mqXeWJ_k4Ggx0uUdQTxFrY;->f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenMenuModeListener$CMMD0mqXeWJ_k4Ggx0uUdQTxFrY;->f$1:I

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenMenuModeListener$CMMD0mqXeWJ_k4Ggx0uUdQTxFrY;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;->lambda$onSideScreenMenuModeChanged$0(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenMenuModeListener;II)V

    return-void
.end method
