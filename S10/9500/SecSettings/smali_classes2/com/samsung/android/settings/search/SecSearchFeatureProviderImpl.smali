.class public Lcom/samsung/android/settings/search/SecSearchFeatureProviderImpl;
.super Lcom/android/settings/search/SearchFeatureProviderImpl;
.source "SecSearchFeatureProviderImpl.java"


# instance fields
.field private mSearchIndexableResources:Lcom/android/settings/search/SearchIndexableResources;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/SearchFeatureProviderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getSearchIndexableResources()Lcom/android/settings/search/SearchIndexableResources;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchFeatureProviderImpl;->mSearchIndexableResources:Lcom/android/settings/search/SearchIndexableResources;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;

    invoke-direct {v0}, Lcom/samsung/android/settings/search/SecSearchIndexableResourcesImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/search/SecSearchFeatureProviderImpl;->mSearchIndexableResources:Lcom/android/settings/search/SearchIndexableResources;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchFeatureProviderImpl;->mSearchIndexableResources:Lcom/android/settings/search/SearchIndexableResources;

    return-object v0
.end method
