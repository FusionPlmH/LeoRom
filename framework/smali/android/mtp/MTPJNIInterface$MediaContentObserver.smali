.class Landroid/mtp/MTPJNIInterface$MediaContentObserver;
.super Landroid/database/ContentObserver;
.source "MTPJNIInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MTPJNIInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MTPJNIInterface;


# direct methods
.method public constructor <init>(Landroid/mtp/MTPJNIInterface;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/MTPJNIInterface$MediaContentObserver;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->dbChange()V

    :cond_0
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->dbChange()V

    :cond_1
    return-void
.end method
