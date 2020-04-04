.class public Lcom/samsung/android/settings/directaction/provider/DirectActionProvider;
.super Landroid/content/ContentProvider;
.source "DirectActionProvider.java"


# instance fields
.field mCommander:Lcom/samsung/android/settings/directaction/ActionCommand;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/directaction/provider/DirectActionProvider;->mCommander:Lcom/samsung/android/settings/directaction/ActionCommand;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/directaction/provider/DirectActionProvider;->mCommander:Lcom/samsung/android/settings/directaction/ActionCommand;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/directaction/ActionCommand;

    invoke-virtual {p0}, Lcom/samsung/android/settings/directaction/provider/DirectActionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/directaction/ActionCommand;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/directaction/provider/DirectActionProvider;->mCommander:Lcom/samsung/android/settings/directaction/ActionCommand;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/directaction/provider/DirectActionProvider;->mCommander:Lcom/samsung/android/settings/directaction/ActionCommand;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/directaction/ActionCommand;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
