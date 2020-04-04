.class public Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;
.super Landroid/os/AsyncTask;
.source "SystemUIIndexProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/indexsearch/SystemUIIndexProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    iget-object v1, v1, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    iget-object v1, v1, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->search(Ljava/lang/String;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    const-class v1, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    iput-object v1, v0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    return-void
.end method
