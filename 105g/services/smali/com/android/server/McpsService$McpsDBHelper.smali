.class Lcom/android/server/McpsService$McpsDBHelper;
.super Landroid/database/ContentObserver;
.source "McpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/McpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "McpsDBHelper"
.end annotation


# instance fields
.field private final KEY_MCPS_ENABLE:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/McpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/McpsService;Landroid/os/Handler;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/McpsService$McpsDBHelper;->this$0:Lcom/android/server/McpsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "multicore_packet_scheduler"

    iput-object v0, p0, Lcom/android/server/McpsService$McpsDBHelper;->KEY_MCPS_ENABLE:Ljava/lang/String;

    const-string/jumbo v0, "multicore_packet_scheduler"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/McpsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public isOnMcps()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/McpsService$McpsDBHelper;->this$0:Lcom/android/server/McpsService;

    invoke-virtual {v0}, Lcom/android/server/McpsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multicore_packet_scheduler"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/McpsService$McpsDBHelper;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    const-string v0, "MCPS-Service"

    const-string v1, "MCPS DB UPDATED CALL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/McpsService$McpsDBHelper;->this$0:Lcom/android/server/McpsService;

    invoke-static {v0, p0}, Lcom/android/server/McpsService;->access$500(Lcom/android/server/McpsService;Lcom/android/server/McpsService$McpsDBHelper;)V

    return-void
.end method
