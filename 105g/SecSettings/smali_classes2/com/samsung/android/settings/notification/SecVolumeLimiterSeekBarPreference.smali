.class public Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "SecVolumeLimiterSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference$Callback;

.field private mCheckedPW:Z

.field private mContext:Landroid/content/Context;

.field private mIconView:Landroid/widget/ImageView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStopped:Z

.field private mSuppressionTextView:Landroid/widget/TextView;

.field private oldLimiterValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x7f0d023a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "file:///system/media/audio/ui/Media_preview_Over_the_horizon.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_limiter_value"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->refreshDrawableState()V

    return-void
.end method


# virtual methods
.method public DisplayCheckUI()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mCallback:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference$Callback;

    invoke-interface {v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference$Callback;->showCheckPasswordDialog()V

    return-void
.end method

.method public onActivityStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mStopped:Z

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x10204a9

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a07f8

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->init()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_limiter_value"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->oldLimiterValue:I

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    if-eqz p3, :cond_3

    add-int/lit8 p2, p2, 0x9

    const-string v0, "VolumeLimiterSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volume_limiter_value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    if-ge p2, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volumelimit_set_password"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mCheckedPW:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->oldLimiterValue:I

    if-le p2, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->oldLimiterValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mCallback:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference$Callback;

    invoke-interface {v1}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference$Callback;->showCheckPasswordDialog()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_limiter_value"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioParam;volumelimit_value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    const/16 v1, 0x1014

    const/16 v2, 0x1016

    int-to-long v3, p2

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_3
    return-void
.end method

.method public prepareMediaPlayer()V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public releaseMediaPlayer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public setCallback(Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference$Callback;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mCallback:Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference$Callback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mCheckedPW:Z

    return-void
.end method

.method public setCheckedPW(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->mCheckedPW:Z

    return-void
.end method
