.class final Landroid/support/v7/app/MediaRouteActionProvider$MediaRouterCallback;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "MediaRouteActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field private final mProviderWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/app/MediaRouteActionProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private refreshRoute(Landroid/support/v7/media/MediaRouter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteActionProvider$MediaRouterCallback;->mProviderWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/MediaRouteActionProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteActionProvider;->refreshRoute()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroid/support/v7/media/MediaRouter;)V

    return-void
.end method

.method public onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroid/support/v7/media/MediaRouter;)V

    return-void
.end method

.method public onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroid/support/v7/media/MediaRouter;)V

    return-void
.end method

.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroid/support/v7/media/MediaRouter;)V

    return-void
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroid/support/v7/media/MediaRouter;)V

    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroid/support/v7/media/MediaRouter;)V

    return-void
.end method
