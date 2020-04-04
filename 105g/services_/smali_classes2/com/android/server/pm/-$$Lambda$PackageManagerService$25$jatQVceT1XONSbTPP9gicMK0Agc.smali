.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$25$jatQVceT1XONSbTPP9gicMK0Agc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService$25;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$25;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$25$jatQVceT1XONSbTPP9gicMK0Agc;->f$0:Lcom/android/server/pm/PackageManagerService$25;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$25$jatQVceT1XONSbTPP9gicMK0Agc;->f$0:Lcom/android/server/pm/PackageManagerService$25;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService$25;->lambda$performReceive$0(Lcom/android/server/pm/PackageManagerService$25;)V

    return-void
.end method
