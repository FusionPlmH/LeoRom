.class public abstract Landroidx/slice/SliceManager;
.super Ljava/lang/Object;
.source "SliceManager.java"


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/slice/SliceManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/slice/SliceManagerWrapper;

    invoke-direct {v0, p0}, Landroidx/slice/SliceManagerWrapper;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/slice/SliceManagerCompat;

    invoke-direct {v0, p0}, Landroidx/slice/SliceManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract getPinnedSlices()Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method
