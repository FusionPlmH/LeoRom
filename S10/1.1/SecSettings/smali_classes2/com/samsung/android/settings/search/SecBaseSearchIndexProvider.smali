.class public Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SecBaseSearchIndexProvider.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public secGetVariableRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
