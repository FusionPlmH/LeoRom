.class public final synthetic Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockAppListLoader$p0o9h1boF5EddYleiaqJvZO2s4Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockAppListLoader$p0o9h1boF5EddYleiaqJvZO2s4Q;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockAppListLoader$p0o9h1boF5EddYleiaqJvZO2s4Q;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;

    invoke-static {v0, p1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->lambda$getAppInfosExceptRecentsList$0(Ljava/util/ArrayList;Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;)Z

    move-result p1

    return p1
.end method
