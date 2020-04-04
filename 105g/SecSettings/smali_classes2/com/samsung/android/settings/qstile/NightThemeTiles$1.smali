.class Lcom/samsung/android/settings/qstile/NightThemeTiles$1;
.super Landroid/database/ContentObserver;
.source "NightThemeTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/qstile/NightThemeTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/qstile/NightThemeTiles;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/qstile/NightThemeTiles;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles$1;->this$0:Lcom/samsung/android/settings/qstile/NightThemeTiles;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    const-string v0, "NightThemeTiles"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles$1;->this$0:Lcom/samsung/android/settings/qstile/NightThemeTiles;

    invoke-virtual {v0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/NightThemeTiles$1;->this$0:Lcom/samsung/android/settings/qstile/NightThemeTiles;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/qstile/NightThemeTiles;->access$000(Lcom/samsung/android/settings/qstile/NightThemeTiles;Z)V

    return-void
.end method
