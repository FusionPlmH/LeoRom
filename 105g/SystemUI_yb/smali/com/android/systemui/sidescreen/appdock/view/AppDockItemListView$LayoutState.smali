.class public final enum Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;
.super Ljava/lang/Enum;
.source "AppDockItemListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

.field public static final enum GRID:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

.field public static final enum LIST:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    const-string v1, "LIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->LIST:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    new-instance v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    const-string v1, "GRID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->GRID:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    sget-object v1, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->LIST:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->GRID:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->$VALUES:[Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;
    .locals 1

    const-class v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;
    .locals 1

    sget-object v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->$VALUES:[Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    invoke-virtual {v0}, [Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    return-object v0
.end method
