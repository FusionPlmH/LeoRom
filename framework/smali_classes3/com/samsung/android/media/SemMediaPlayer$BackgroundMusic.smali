.class public abstract Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BackgroundMusic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    }
.end annotation


# instance fields
.field protected mBGMInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    .locals 2

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->offset:J

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->length:J

    iput p3, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->startTimeMs:I

    iput p4, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->endTimeMs:I

    sub-int v0, p4, p3

    iput v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->durationMs:I

    return-object p1
.end method

.method protected addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    .locals 2

    iput-object p2, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->offset:J

    const-wide v0, 0x7ffffffffffffffL

    iput-wide v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->length:J

    iput p3, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->startTimeMs:I

    iput p4, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->endTimeMs:I

    sub-int v0, p4, p3

    iput v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->durationMs:I

    return-object p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public writeToParcel()Landroid/os/Parcel;
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const-string v1, "SemMediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackgroundMusic size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget-object v2, v2, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget-wide v2, v2, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->offset:J

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget-wide v2, v2, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->length:J

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget v2, v2, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->startTimeMs:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget v2, v2, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->endTimeMs:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget v2, v2, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->durationMs:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
