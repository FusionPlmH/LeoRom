.class Lcom/samsung/android/settings/ConnectionsSettings$4;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "ConnectionsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ConnectionsSettings;
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
    .locals 12
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

    invoke-static {p1}, Lcom/samsung/android/settings/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v3, 0xc39

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v1, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/samsung/android/settings/ConnectionsUtils;->isBluetoothEnabled(Landroid/content/Context;)Z

    move-result v3

    new-instance v4, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v5, 0xc89

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v3, :cond_1

    const-string v5, "1"

    goto :goto_1

    :cond_1
    const-string v5, "0"

    :goto_1
    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    move v5, v6

    new-instance v6, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v7, 0xc8a

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v5, :cond_3

    const-string v7, "1"

    goto :goto_3

    :cond_3
    const-string v7, "0"

    :goto_3
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/samsung/android/settings/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v7

    new-instance v8, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v9, 0xc8d

    invoke-direct {v8, v9}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v7, :cond_4

    const-string v9, "1"

    goto :goto_4

    :cond_4
    const-string v9, "0"

    :goto_4
    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/samsung/android/settings/ConnectionsUtils;->isNfcTurnOn(Landroid/content/Context;)Z

    move-result v9

    new-instance v10, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v11, 0xc8e

    invoke-direct {v10, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v9, :cond_5

    const-string v11, "1"

    goto :goto_5

    :cond_5
    const-string v11, "0"

    :goto_5
    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
