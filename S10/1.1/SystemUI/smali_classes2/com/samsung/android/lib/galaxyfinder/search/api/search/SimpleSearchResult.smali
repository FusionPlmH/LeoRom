.class public Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;
.super Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
.source "SimpleSearchResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult<",
        "Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mResultType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected final getItemColumns()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected final getResultType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;->mResultType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "basic"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;->mResultType:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method protected final getResultVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method protected bridge synthetic transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)[Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;->transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method
