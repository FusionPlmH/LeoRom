.class Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView$2;
.super Landroid/util/Property;
.source "SideScreenDividerHandleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;)Ljava/lang/Integer;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView$2;->get(Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->access$102(Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;I)I

    invoke-virtual {p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->invalidate()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView$2;->set(Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;Ljava/lang/Integer;)V

    return-void
.end method
