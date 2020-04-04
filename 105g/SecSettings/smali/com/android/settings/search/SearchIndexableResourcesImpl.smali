.class public Lcom/android/settings/search/SearchIndexableResourcesImpl;
.super Ljava/lang/Object;
.source "SearchIndexableResourcesImpl.java"

# interfaces
.implements Lcom/android/settings/search/SearchIndexableResources;


# instance fields
.field private final sProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SearchIndexableResourcesImpl;->sProviders:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method addIndex(Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/SearchIndexableResourcesImpl;->sProviders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getProviderValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/search/SearchIndexableResourcesImpl;->sProviders:Ljava/util/Set;

    return-object v0
.end method
