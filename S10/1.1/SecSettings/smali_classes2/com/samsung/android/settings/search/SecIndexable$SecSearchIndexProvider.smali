.class public interface abstract Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;
.super Ljava/lang/Object;
.source "SecIndexable.java"

# interfaces
.implements Lcom/android/settings/search/Indexable$SearchIndexProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/SecIndexable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SecSearchIndexProvider"
.end annotation


# virtual methods
.method public abstract secGetVariableRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
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
.end method
