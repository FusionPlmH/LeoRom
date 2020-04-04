.class public final synthetic Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$e9K4J-X-sHSL7Xlz_OTaBEDYh_U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SideScreenManagerInternal;

.field private final synthetic f$1:Landroid/graphics/Rect;

.field private final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SideScreenManagerInternal;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$e9K4J-X-sHSL7Xlz_OTaBEDYh_U;->f$0:Lcom/android/server/wm/SideScreenManagerInternal;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$e9K4J-X-sHSL7Xlz_OTaBEDYh_U;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$e9K4J-X-sHSL7Xlz_OTaBEDYh_U;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$e9K4J-X-sHSL7Xlz_OTaBEDYh_U;->f$0:Lcom/android/server/wm/SideScreenManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$e9K4J-X-sHSL7Xlz_OTaBEDYh_U;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$e9K4J-X-sHSL7Xlz_OTaBEDYh_U;->f$2:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->lambda$setMinimizedDockedStack$5(Lcom/android/server/wm/SideScreenManagerInternal;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method
