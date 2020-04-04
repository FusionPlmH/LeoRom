.class public Lcom/android/systemui/dnd/StackVisibility;
.super Ljava/lang/Object;
.source "StackVisibility.java"


# instance fields
.field private isHomeVisible:Z

.field private isSidePrimaryVisible:Z

.field private isSideSecondaryVisible:Z

.field private isSplitPrimaryVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)Lcom/android/systemui/dnd/StackVisibility;
    .locals 4

    invoke-static {p1}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->isStackVisible(II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/dnd/StackVisibility;->isHomeVisible:Z

    invoke-static {p1}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->getSideSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getMode()I

    move-result v3

    if-ne v3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/dnd/StackVisibility;->isSplitPrimaryVisible:Z

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->isStackVisible(II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/dnd/StackVisibility;->isSidePrimaryVisible:Z

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->isStackVisible(II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/dnd/StackVisibility;->isSideSecondaryVisible:Z

    return-object p0
.end method

.method public isHomeVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/dnd/StackVisibility;->isHomeVisible:Z

    return v0
.end method

.method public isSidescreenOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/dnd/StackVisibility;->isSidePrimaryVisible:Z

    return v0
.end method

.method public isSplit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/dnd/StackVisibility;->isSplitPrimaryVisible:Z

    return v0
.end method

.method public isThreeUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/dnd/StackVisibility;->isSidePrimaryVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/dnd/StackVisibility;->isSideSecondaryVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTwoUp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isSidescreenOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/dnd/StackVisibility;->isThreeUp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[isHomeVisible=%b, isSplitPrimaryVisible=%b, isSidePrimaryVisible=%b, isSideSecondaryVisible=%b]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/systemui/dnd/StackVisibility;->isHomeVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/dnd/StackVisibility;->isSplitPrimaryVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/dnd/StackVisibility;->isSidePrimaryVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/dnd/StackVisibility;->isSideSecondaryVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
