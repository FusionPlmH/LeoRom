.class public final synthetic Lcom/android/systemui/sidescreen/appdock/-$$Lambda$AppDockWindow$3pi0ah1rcH9nZfOShZ7o__WbSv0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/sidescreen/appdock/-$$Lambda$AppDockWindow$3pi0ah1rcH9nZfOShZ7o__WbSv0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/sidescreen/appdock/-$$Lambda$AppDockWindow$3pi0ah1rcH9nZfOShZ7o__WbSv0;

    invoke-direct {v0}, Lcom/android/systemui/sidescreen/appdock/-$$Lambda$AppDockWindow$3pi0ah1rcH9nZfOShZ7o__WbSv0;-><init>()V

    sput-object v0, Lcom/android/systemui/sidescreen/appdock/-$$Lambda$AppDockWindow$3pi0ah1rcH9nZfOShZ7o__WbSv0;->INSTANCE:Lcom/android/systemui/sidescreen/appdock/-$$Lambda$AppDockWindow$3pi0ah1rcH9nZfOShZ7o__WbSv0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p1}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->lambda$reloadRecentTasks$1(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p1

    return p1
.end method
