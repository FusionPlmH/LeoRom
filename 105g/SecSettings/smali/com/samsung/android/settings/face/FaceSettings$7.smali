.class Lcom/samsung/android/settings/face/FaceSettings$7;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "FaceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/FaceSettings;
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
    .locals 13
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

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    nop

    const/16 v3, 0x100

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v1, v3

    new-instance v3, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v6, 0x20e1

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v1, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "face_stay_on_lock_screen"

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v5, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    new-instance v7, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v8, 0x20f6

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    move v8, v5

    goto :goto_3

    :cond_3
    move v8, v4

    :goto_3
    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-static {p1, v8}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;I)Z

    move-result v8

    new-instance v9, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v10, 0x20e5

    invoke-direct {v9, v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    if-eqz v8, :cond_4

    if-eqz v1, :cond_4

    move v10, v5

    goto :goto_4

    :cond_4
    move v10, v4

    :goto_4
    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "face_brighten_screen"

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v12

    invoke-static {v10, v11, v4, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-ne v10, v5, :cond_5

    move v4, v5

    nop

    :cond_5
    const/4 v5, 0x0

    const-string v10, ""

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v12

    move v5, v12

    :cond_6
    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    const-string v12, "1"

    goto :goto_5

    :cond_7
    const-string v12, "0"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    move-object v10, v12

    goto :goto_6

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_6
    new-instance v11, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v12, 0x20e6

    invoke-direct {v11, v12}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v11, v10}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(Ljava/lang/String;)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0
.end method
