.class public Lcom/android/systemui/indexsearch/SystemUIIndexMediator;
.super Ljava/lang/Object;
.source "SystemUIIndexMediator.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mLastQuery:Ljava/lang/String;

.field mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field mQsTileHost:Lcom/android/systemui/qs/QSTileHost;

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field mTileSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/indexsearch/Searchable;",
            ">;"
        }
    .end annotation
.end field

.field mTileSearchables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/indexsearch/Searchable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SystemUIIndexMediator"

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;)V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "SystemUIIndexMediator state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mTileSearchables"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/indexsearch/Searchable;

    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getSearchTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "    Title="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getSearchTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, "    Title=null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getSearchTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "    Search Words="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getSearchWords()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string v2, "    Search Words=null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getSearchTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "    IconUri="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    const-string v2, "    IconUri=null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "  mTileSearchResults"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Last Query is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mLastQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/indexsearch/Searchable;

    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getSearchTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "    Title="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getSearchTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    const-string v2, "    Title=null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getSearchTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "    Search Words="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getSearchWords()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    :cond_5
    const-string v2, "    Search Words=null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getSearchTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "    IconUri="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_7

    :cond_6
    const-string v2, "    IconUri=null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_7
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    return-void
.end method

.method public isInQuickQsPanel(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mQsTileHost:Lcom/android/systemui/qs/QSTileHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mQsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileHost;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result v3

    if-le v0, v3, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public search(Ljava/lang/String;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    .locals 22

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mLastQuery:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/indexsearch/Searchable;

    invoke-interface {v4}, Lcom/android/systemui/indexsearch/Searchable;->getSearchTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lcom/android/systemui/indexsearch/Searchable;->getIconUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lcom/android/systemui/indexsearch/Searchable;->getSearchWords()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lcom/android/systemui/indexsearch/Searchable;->getSearchWords()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v5, v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    :goto_2
    goto :goto_0

    :cond_3
    new-instance v3, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;

    invoke-direct {v3, v1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->setTotalCount(I)V

    const-string v4, "SystemUIIndexMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "search result totalCount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/indexsearch/Searchable;

    const-string v13, "content://com.android.systemui.indexsearch"

    invoke-interface {v5}, Lcom/android/systemui/indexsearch/Searchable;->getSearchTitle()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5}, Lcom/android/systemui/indexsearch/Searchable;->getIconUri()Landroid/net/Uri;

    move-result-object v15

    if-eqz v14, :cond_4

    if-nez v15, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v5}, Lcom/android/systemui/indexsearch/Searchable;->getSearchDescription()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface {v5}, Lcom/android/systemui/indexsearch/Searchable;->getTileSpecForAction()Ljava/lang/String;

    move-result-object v12

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.systemui.indexsearch.detailview"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v6

    iget-object v6, v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;

    invoke-virtual {v11, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v6, "tileSpec"

    invoke-virtual {v11, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v18, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;

    new-instance v10, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;

    invoke-direct {v10, v11}, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;-><init>(Landroid/content/Intent;)V

    move-object/from16 v6, v18

    move-object v7, v13

    move-object v8, v15

    move-object v9, v14

    move-object/from16 v19, v10

    move-object/from16 v10, v16

    move-object/from16 v20, v11

    move-object/from16 v11, v17

    move-object/from16 v21, v1

    move-object v1, v12

    move-object/from16 v12, v19

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;)V

    invoke-virtual {v3, v6}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->addResultItem(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->setInstantTileListening(ZLjava/lang/String;)V

    const-string v7, "SystemUIIndexMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "search result title : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-object/from16 v1, v21

    goto :goto_3

    :cond_6
    move-object/from16 v21, v1

    return-object v3
.end method

.method public setInstantTileListening(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setInstantTileListening(ZLjava/lang/String;)V

    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-void
.end method

.method public setTileHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mQsTileHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setTileSearchables(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/indexsearch/Searchable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
