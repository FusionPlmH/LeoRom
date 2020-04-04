.class public Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;
.super Ljava/lang/Object;
.source "GeneralItem.java"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GeneralItem"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;
    .locals 6

    new-instance v0, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x6cbf5626

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "/Settings/General/ShowKeyboardButton"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const-string v2, "GeneralItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "show_keyboard_button"

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v4, "GeneralItem"

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v3, v5, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v2

    return-object v2
.end method

.method public setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v2, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x6cbf5626

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "/Settings/General/ShowKeyboardButton"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x11200ae

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "errorType"

    const-string v5, "FEATURE"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "show_keyboard_button"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    const-string v5, "GeneralItem"

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    aget-object v4, v6, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v3

    return-object v3
.end method
