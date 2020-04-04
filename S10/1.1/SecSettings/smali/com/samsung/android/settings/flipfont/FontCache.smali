.class public Lcom/samsung/android/settings/flipfont/FontCache;
.super Ljava/lang/Object;
.source "FontCache.java"


# static fields
.field private static fontCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/flipfont/FontCache;->fontCache:Ljava/util/Hashtable;

    return-void
.end method

.method public static get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/flipfont/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1, p0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    sget-object v1, Lcom/samsung/android/settings/flipfont/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return-object v2

    :cond_0
    :goto_0
    return-object v0
.end method
