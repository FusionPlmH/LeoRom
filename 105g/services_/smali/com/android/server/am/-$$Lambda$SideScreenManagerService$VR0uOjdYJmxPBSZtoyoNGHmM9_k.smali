.class public final synthetic Lcom/android/server/am/-$$Lambda$SideScreenManagerService$VR0uOjdYJmxPBSZtoyoNGHmM9_k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/SideScreenManagerService;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SideScreenManagerService;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$VR0uOjdYJmxPBSZtoyoNGHmM9_k;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iput-boolean p2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$VR0uOjdYJmxPBSZtoyoNGHmM9_k;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$VR0uOjdYJmxPBSZtoyoNGHmM9_k;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$VR0uOjdYJmxPBSZtoyoNGHmM9_k;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/am/SideScreenManagerService;->lambda$hideSideScreen$2(Lcom/android/server/am/SideScreenManagerService;Z)V

    return-void
.end method
