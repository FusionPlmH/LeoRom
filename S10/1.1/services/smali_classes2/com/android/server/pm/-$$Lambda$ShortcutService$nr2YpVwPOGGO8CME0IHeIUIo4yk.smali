.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$nr2YpVwPOGGO8CME0IHeIUIo4yk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$nr2YpVwPOGGO8CME0IHeIUIo4yk;->f$0:Lcom/android/server/pm/ShortcutService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutService$nr2YpVwPOGGO8CME0IHeIUIo4yk;->f$0:Lcom/android/server/pm/ShortcutService;

    check-cast p1, Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lcom/android/server/pm/ShortcutService;->lambda$applyRestore$14(Lcom/android/server/pm/ShortcutService;Ljava/io/PrintWriter;)V

    return-void
.end method
