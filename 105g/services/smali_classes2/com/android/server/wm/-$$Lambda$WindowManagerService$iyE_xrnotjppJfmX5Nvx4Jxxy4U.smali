.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$iyE_xrnotjppJfmX5Nvx4Jxxy4U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$iyE_xrnotjppJfmX5Nvx4Jxxy4U;->f$0:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$iyE_xrnotjppJfmX5Nvx4Jxxy4U;->f$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->lambda$stopFreezingDisplayLocked$5(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method
