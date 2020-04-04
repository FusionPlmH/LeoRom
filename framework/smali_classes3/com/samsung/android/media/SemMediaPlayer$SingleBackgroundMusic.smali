.class public Lcom/samsung/android/media/SemMediaPlayer$SingleBackgroundMusic;
.super Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleBackgroundMusic"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Landroid/content/res/AssetFileDescriptor;II)V
    .locals 2

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$SingleBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public set(Ljava/io/FileDescriptor;II)V
    .locals 2

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$SingleBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
