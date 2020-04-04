.class public Lcom/fusionleo/LeoProvider/LeoObserver;
.super Landroid/database/ContentObserver;
.source "LeoObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;
    }
.end annotation


# instance fields
.field private mObserverListener:Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/fusionleo/LeoProvider/LeoObserver;->mObserverListener:Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/fusionleo/LeoProvider/LeoObserver;->mObserverListener:Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;->onLeoChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
