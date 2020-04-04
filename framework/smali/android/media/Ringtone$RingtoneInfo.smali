.class Landroid/media/Ringtone$RingtoneInfo;
.super Ljava/lang/Object;
.source "Ringtone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Ringtone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingtoneInfo"
.end annotation


# instance fields
.field private mHighlightOffset:I

.field private mIsExternalRingtone:Z

.field private mIsUsingRingtoneCache:Z

.field private mRingtoneUri:Landroid/net/Uri;

.field private mType:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mIsExternalRingtone:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/media/Ringtone$RingtoneInfo;->mHighlightOffset:I

    iput-boolean v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mIsUsingRingtoneCache:Z

    iput v1, p0, Landroid/media/Ringtone$RingtoneInfo;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mRingtoneUri:Landroid/net/Uri;

    return-void
.end method

.method protected static parse(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone$RingtoneInfo;
    .locals 7

    new-instance v0, Landroid/media/Ringtone$RingtoneInfo;

    invoke-direct {v0}, Landroid/media/Ringtone$RingtoneInfo;-><init>()V

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v2

    iput v2, v0, Landroid/media/Ringtone$RingtoneInfo;->mType:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    iput-boolean v3, v0, Landroid/media/Ringtone$RingtoneInfo;->mIsUsingRingtoneCache:Z

    invoke-static {v2}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-static {v5, v4, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move-object v1, v6

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    const-string v4, "Ringtone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change URI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, v0, Landroid/media/Ringtone$RingtoneInfo;->mRingtoneUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    invoke-static {v1}, Landroid/media/RingtoneManager;->isExternalRingtoneUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    iput-boolean v3, v0, Landroid/media/Ringtone$RingtoneInfo;->mIsExternalRingtone:Z

    :try_start_0
    const-string v3, "highlight_offset"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ringtone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "highlight offset is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Landroid/media/Ringtone$RingtoneInfo;->mHighlightOffset:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "Ringtone"

    const-string v5, "Failed get highlight offset"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v0

    :cond_4
    :goto_3
    const/4 v3, 0x0

    iput v3, v0, Landroid/media/Ringtone$RingtoneInfo;->mHighlightOffset:I

    return-object v0
.end method


# virtual methods
.method protected getHighlightOffset()I
    .locals 1

    iget v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mHighlightOffset:I

    return v0
.end method

.method protected getType()I
    .locals 1

    iget v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mType:I

    return v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mRingtoneUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected isExternalRingtone()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mIsExternalRingtone:Z

    return v0
.end method

.method protected isUsingRingtoneCache()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/Ringtone$RingtoneInfo;->mIsUsingRingtoneCache:Z

    return v0
.end method
