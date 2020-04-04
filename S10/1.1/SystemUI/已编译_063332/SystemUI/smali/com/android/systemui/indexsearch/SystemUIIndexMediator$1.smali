.class Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;
.super Ljava/lang/Object;
.source "SystemUIIndexMediator.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/indexsearch/SystemUIIndexMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurningOff()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    iget-object v0, v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/indexsearch/Searchable;

    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getTileSpecForAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-virtual {v3, v2}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->isInQuickQsPanel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->setInstantTileListening(ZLjava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    iget-object v0, v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
