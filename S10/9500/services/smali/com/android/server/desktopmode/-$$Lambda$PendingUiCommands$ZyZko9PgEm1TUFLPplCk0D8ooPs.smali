.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$PendingUiCommands$ZyZko9PgEm1TUFLPplCk0D8ooPs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$PendingUiCommands$ZyZko9PgEm1TUFLPplCk0D8ooPs;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$PendingUiCommands$ZyZko9PgEm1TUFLPplCk0D8ooPs;->f$0:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/desktopmode/PendingUiCommands;->lambda$flushCommands$0(Ljava/util/List;)V

    return-void
.end method
