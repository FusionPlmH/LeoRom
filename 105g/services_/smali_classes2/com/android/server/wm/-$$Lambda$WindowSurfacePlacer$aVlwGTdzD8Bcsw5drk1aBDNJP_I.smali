.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$aVlwGTdzD8Bcsw5drk1aBDNJP_I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$aVlwGTdzD8Bcsw5drk1aBDNJP_I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$aVlwGTdzD8Bcsw5drk1aBDNJP_I;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$aVlwGTdzD8Bcsw5drk1aBDNJP_I;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$aVlwGTdzD8Bcsw5drk1aBDNJP_I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$aVlwGTdzD8Bcsw5drk1aBDNJP_I;

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

    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-static {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->lambda$findAnimLayoutParamsToken$4(Lcom/android/server/wm/AppWindowToken;)Z

    move-result p1

    return p1
.end method
