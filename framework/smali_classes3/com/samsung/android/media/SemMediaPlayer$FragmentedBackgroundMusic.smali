.class public Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;
.super Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentedBackgroundMusic"
.end annotation


# instance fields
.field private final BGM_SECTION_TYPE_BODY:I

.field private final BGM_SECTION_TYPE_INTRO:I

.field private final BGM_SECTION_TYPE_OUTRO:I

.field private mBodyCount:I

.field private mBodyCycle:I

.field private mEndOutro:Z

.field private mFBGMBody:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

.field private mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

.field private mLastIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->BGM_SECTION_TYPE_INTRO:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->BGM_SECTION_TYPE_BODY:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->BGM_SECTION_TYPE_OUTRO:I

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCycle:I

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mLastIndex:I

    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mEndOutro:Z

    return-void
.end method

.method private addSections()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public addBody(Landroid/content/res/AssetFileDescriptor;II)I
    .locals 2

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    return v1
.end method

.method public addBody(Ljava/io/FileDescriptor;II)I
    .locals 2

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    return v1
.end method

.method public clear()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCycle:I

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mLastIndex:I

    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mEndOutro:Z

    return-void
.end method

.method public setIntro(Landroid/content/res/AssetFileDescriptor;II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    return-void
.end method

.method public setIntro(Ljava/io/FileDescriptor;II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    return-void
.end method

.method public setOutro(Landroid/content/res/AssetFileDescriptor;II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    return-void
.end method

.method public setOutro(Ljava/io/FileDescriptor;II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    return-void
.end method

.method public setPlaybackRule(IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    if-gt p2, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCycle:I

    iput p2, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mLastIndex:I

    iput-boolean p3, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mEndOutro:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bodyLastIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "is invalid; larger than BGM_SECTION_TYPE_BODY count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeToParcel()Landroid/os/Parcel;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->addSections()V

    invoke-super {p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->writeToParcel()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCycle:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mLastIndex:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mEndOutro:Z

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-object v0
.end method
