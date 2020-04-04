.class Lcom/samsung/android/settings/notification/SecZenModeDNDPrioritySettings$1;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "SecZenModeDNDPrioritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecZenModeDNDPrioritySettings;
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
    .locals 18
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

    const/4 v8, 0x4

    const/4 v0, 0x4

    move v9, v0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/notification/SecNotiUtils;->getZenMode(Landroid/content/Context;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/notification/SecNotiUtils;->getZenPolicy(Landroid/content/Context;)Landroid/app/NotificationManager$Policy;

    move-result-object v11

    const/4 v12, 0x2

    if-ne v10, v12, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v13, 0x3

    if-ne v10, v13, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    iget v13, v11, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v13, v13, 0x20

    if-eqz v13, :cond_2

    const/4 v2, 0x1

    :cond_2
    iget v13, v11, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v13, v13, 0x40

    if-eqz v13, :cond_3

    const/4 v3, 0x1

    :cond_3
    iget v13, v11, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v13, v13, 0x80

    if-eqz v13, :cond_4

    const/4 v4, 0x1

    :cond_4
    iget v13, v11, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v13, v13, 0x10

    if-eqz v13, :cond_5

    const/4 v5, 0x1

    :cond_5
    iget v13, v11, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_6

    const/4 v6, 0x1

    :cond_6
    iget v12, v11, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_7

    const/4 v7, 0x1

    :cond_7
    :goto_0
    iget v12, v11, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_8

    iget v12, v11, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    add-int/lit8 v12, v12, 0x1

    move v8, v12

    :cond_8
    iget v12, v11, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v0, v12

    if-eqz v0, :cond_9

    iget v0, v11, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v0, 0x1

    :cond_9
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v10, "SecZenModeDNDPriority"

    const-string v11, "SecurityException"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v10, 0x1019

    invoke-direct {v0, v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v2, :cond_a

    const-string v10, "1"

    goto :goto_2

    :cond_a
    const-string v10, "0"

    :goto_2
    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v11, 0x101a

    invoke-direct {v10, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v3, :cond_b

    const-string v11, "1"

    goto :goto_3

    :cond_b
    const-string v11, "0"

    :goto_3
    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v12, 0x101b

    invoke-direct {v11, v12}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v4, :cond_c

    const-string v12, "1"

    goto :goto_4

    :cond_c
    const-string v12, "0"

    :goto_4
    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v13, 0x101d

    invoke-direct {v12, v13}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v12, v8}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v14, 0x101f

    invoke-direct {v13, v14}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v13, v9}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v15, 0x1020

    invoke-direct {v14, v15}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v5, :cond_d

    const-string v15, "1"

    goto :goto_5

    :cond_d
    const-string v15, "0"

    :goto_5
    invoke-virtual {v14, v15}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-object/from16 v16, v0

    const/16 v0, 0x1021

    invoke-direct {v15, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v6, :cond_e

    const-string v0, "1"

    goto :goto_6

    :cond_e
    const-string v0, "0"

    :goto_6
    invoke-virtual {v15, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-object/from16 v17, v0

    const/16 v0, 0x1022

    invoke-direct {v15, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v7, :cond_f

    const-string v0, "1"

    goto :goto_7

    :cond_f
    const-string v0, "0"

    :goto_7
    invoke-virtual {v15, v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
