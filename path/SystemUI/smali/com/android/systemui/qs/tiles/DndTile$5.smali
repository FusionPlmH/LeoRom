.class Lcom/android/systemui/qs/tiles/DndTile$5;
.super Ljava/lang/Object;
.source "DndTile.java"

# interfaces
.implements Lcom/android/systemui/volume/ZenModePanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DndTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$5;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpanded(Z)V
    .locals 0

    return-void
.end method

.method public onInteraction()V
    .locals 0

    return-void
.end method

.method public onPrioritySettings()V
    .locals 3

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {}, Lcom/android/systemui/qs/tiles/DndTile;->access$1900()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method
