.class public final synthetic Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$e1U5JieNVpxecydj89Cj8vDDAHo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$e1U5JieNVpxecydj89Cj8vDDAHo;->f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$SideScreenEventListener$e1U5JieNVpxecydj89Cj8vDDAHo;->f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;->lambda$onLidStateChanged$6(Lcom/samsung/android/systemui/sidescreen/SideScreenController$SideScreenEventListener;)V

    return-void
.end method
