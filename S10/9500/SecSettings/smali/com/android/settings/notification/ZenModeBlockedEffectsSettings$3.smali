.class Lcom/android/settings/notification/ZenModeBlockedEffectsSettings$3;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "ZenModeBlockedEffectsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;
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
    .locals 16
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

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    move v8, v0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/notification/SecNotiUtils;->getZenPolicy(Landroid/content/Context;)Landroid/app/NotificationManager$Policy;

    move-result-object v9

    iget v10, v9, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v10}, Landroid/app/NotificationManager$Policy;->secAreAllVisualEffectsSuppressed(I)Z

    move-result v11

    move v2, v11

    iget v11, v9, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v11, v11, 0x4

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    move v11, v12

    goto :goto_0

    :cond_0
    move v11, v0

    :goto_0
    move v3, v11

    iget v11, v9, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_1

    move v11, v12

    goto :goto_1

    :cond_1
    move v11, v0

    :goto_1
    move v4, v11

    iget v11, v9, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v11, v11, 0x40

    if-eqz v11, :cond_2

    move v11, v12

    goto :goto_2

    :cond_2
    move v11, v0

    :goto_2
    move v5, v11

    iget v11, v9, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit16 v11, v11, 0x100

    if-eqz v11, :cond_3

    move v11, v12

    goto :goto_3

    :cond_3
    move v11, v0

    :goto_3
    move v6, v11

    iget v11, v9, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_4

    move v11, v12

    goto :goto_4

    :cond_4
    move v11, v0

    :goto_4
    move v7, v11

    iget v11, v9, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    move v12, v0

    :goto_5
    move v8, v12

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v9, "ZenModeSettings"

    const-string v10, "SecurityException"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v9, 0x102d

    invoke-direct {v0, v9}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v2, :cond_6

    const-string v9, "1"

    goto :goto_7

    :cond_6
    const-string v9, "0"

    :goto_7
    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v10, 0x102e

    invoke-direct {v9, v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v3, :cond_7

    const-string v10, "1"

    goto :goto_8

    :cond_7
    const-string v10, "0"

    :goto_8
    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v11, 0x102f

    invoke-direct {v10, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v4, :cond_8

    const-string v11, "1"

    goto :goto_9

    :cond_8
    const-string v11, "0"

    :goto_9
    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v12, 0x1030

    invoke-direct {v11, v12}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v5, :cond_9

    const-string v12, "1"

    goto :goto_a

    :cond_9
    const-string v12, "0"

    :goto_a
    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v13, 0x1031

    invoke-direct {v12, v13}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v6, :cond_a

    const-string v13, "1"

    goto :goto_b

    :cond_a
    const-string v13, "0"

    :goto_b
    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v14, 0x1032

    invoke-direct {v13, v14}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v7, :cond_b

    const-string v14, "1"

    goto :goto_c

    :cond_b
    const-string v14, "0"

    :goto_c
    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v15, 0x1033

    invoke-direct {v14, v15}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v8, :cond_c

    const-string v15, "1"

    goto :goto_d

    :cond_c
    const-string v15, "0"

    :goto_d
    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
