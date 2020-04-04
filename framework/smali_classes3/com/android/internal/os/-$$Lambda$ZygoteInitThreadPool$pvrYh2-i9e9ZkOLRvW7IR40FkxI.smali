.class public final synthetic Lcom/android/internal/os/-$$Lambda$ZygoteInitThreadPool$pvrYh2-i9e9ZkOLRvW7IR40FkxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/os/ZygoteInitThreadPool;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/ZygoteInitThreadPool;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/-$$Lambda$ZygoteInitThreadPool$pvrYh2-i9e9ZkOLRvW7IR40FkxI;->f$0:Lcom/android/internal/os/ZygoteInitThreadPool;

    iput p2, p0, Lcom/android/internal/os/-$$Lambda$ZygoteInitThreadPool$pvrYh2-i9e9ZkOLRvW7IR40FkxI;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/-$$Lambda$ZygoteInitThreadPool$pvrYh2-i9e9ZkOLRvW7IR40FkxI;->f$0:Lcom/android/internal/os/ZygoteInitThreadPool;

    iget v1, p0, Lcom/android/internal/os/-$$Lambda$ZygoteInitThreadPool$pvrYh2-i9e9ZkOLRvW7IR40FkxI;->f$1:I

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteInitThreadPool;->lambda$pararrelPreloadTimeout$0(Lcom/android/internal/os/ZygoteInitThreadPool;I)V

    return-void
.end method
