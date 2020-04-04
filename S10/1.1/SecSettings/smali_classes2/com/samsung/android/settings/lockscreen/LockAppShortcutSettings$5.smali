.class Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$5;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "LockAppShortcutSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/logging/status/StatusData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    const-string v2, ""

    new-instance v3, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    invoke-direct {v3}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;-><init>()V

    const/4 v4, 0x1

    invoke-static {p1, v4, v3}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;ILcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;)Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    invoke-direct {v4}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;-><init>()V

    const/4 v5, 0x3

    invoke-static {p1, v5, v4}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;ILcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;)Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;

    move-result-object v4

    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v1, v3, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    :cond_0
    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v2, v4, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    :cond_1
    new-instance v5, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v6, 0x2342

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v7, 0x2343

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
