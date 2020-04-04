.class public Lcom/samsung/android/lib/episode/EpisodeUtils;
.super Ljava/lang/Object;
.source "EpisodeUtils.java"


# direct methods
.method public static isSettingAppSupportBnR()Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Eternal/EpisodeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSettingAppSupportBnR() - osVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / isEngBinary : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/lib/episode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1b

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/16 v4, 0x1a

    if-le v0, v4, :cond_1

    return v3

    :cond_0
    const/16 v4, 0x1b

    if-le v0, v4, :cond_1

    return v3

    :cond_1
    const/4 v3, 0x0

    return v3
.end method
