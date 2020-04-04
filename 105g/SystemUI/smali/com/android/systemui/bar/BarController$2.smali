.class Lcom/android/systemui/bar/BarController$2;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bar/BarController;->setQSPanel(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/BarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/BarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 9

    move-object v0, p0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    if-nez v1, :cond_7

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v2, "qspanel_media_devices_using_remote_view"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isMediaQuickControlBarSettingOn()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v1}, Lcom/android/systemui/bar/BarController;->access$200(Lcom/android/systemui/bar/BarController;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v1}, Lcom/android/systemui/qs/PagedTileLayout;->getTop()I

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v2}, Lcom/android/systemui/bar/BarController;->access$300(Lcom/android/systemui/bar/BarController;)Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getQuickQsPanel()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v3}, Lcom/android/systemui/bar/BarController;->access$400(Lcom/android/systemui/bar/BarController;)I

    move-result v3

    if-ne v3, v1, :cond_1

    iget-object v3, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v3}, Lcom/android/systemui/bar/BarController;->access$500(Lcom/android/systemui/bar/BarController;)I

    move-result v3

    if-eq v3, v2, :cond_5

    :cond_1
    iget-object v3, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v3, v1}, Lcom/android/systemui/bar/BarController;->access$402(Lcom/android/systemui/bar/BarController;I)I

    iget-object v3, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v3, v2}, Lcom/android/systemui/bar/BarController;->access$502(Lcom/android/systemui/bar/BarController;I)I

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v4}, Lcom/android/systemui/bar/BarController;->access$400(Lcom/android/systemui/bar/BarController;)I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v5}, Lcom/android/systemui/bar/BarController;->access$600(Lcom/android/systemui/bar/BarController;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v5}, Lcom/android/systemui/bar/BarController;->access$700(Lcom/android/systemui/bar/BarController;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v5}, Lcom/android/systemui/bar/BarController;->access$500(Lcom/android/systemui/bar/BarController;)I

    move-result v5

    if-le v5, v4, :cond_2

    iget-object v5, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v5}, Lcom/android/systemui/bar/BarController;->access$800(Lcom/android/systemui/bar/BarController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070671

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const-string v6, "BarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "qqsPanelTop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v8}, Lcom/android/systemui/bar/BarController;->access$500(Lcom/android/systemui/bar/BarController;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", tileLayoutTop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v8}, Lcom/android/systemui/bar/BarController;->access$400(Lcom/android/systemui/bar/BarController;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", threshold = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mHiddenExpandedBarsHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v8}, Lcom/android/systemui/bar/BarController;->access$600(Lcom/android/systemui/bar/BarController;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mUselessHiddenExpandedBarsHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v8}, Lcom/android/systemui/bar/BarController;->access$700(Lcom/android/systemui/bar/BarController;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v6}, Lcom/android/systemui/bar/BarController;->access$500(Lcom/android/systemui/bar/BarController;)I

    move-result v6

    sub-int/2addr v6, v4

    if-le v6, v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    iget-object v5, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v5}, Lcom/android/systemui/bar/BarController;->access$900(Lcom/android/systemui/bar/BarController;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/bar/BarItem;

    instance-of v7, v6, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v7, v3}, Lcom/android/systemui/bar/QSBarItem;->setPanelShort(Z)V

    :cond_3
    goto :goto_0

    :cond_4
    iget-object v5, v0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-static {v5}, Lcom/android/systemui/bar/BarController;->access$100(Lcom/android/systemui/bar/BarController;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    return-void

    :cond_7
    return-void
.end method
