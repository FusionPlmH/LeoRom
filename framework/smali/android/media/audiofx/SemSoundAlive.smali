.class public Landroid/media/audiofx/SemSoundAlive;
.super Landroid/media/audiofx/AudioEffect;
.source "SemSoundAlive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/SemSoundAlive$Settings;,
        Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;,
        Landroid/media/audiofx/SemSoundAlive$OnErrorListener;,
        Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;,
        Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final EFFECT_TYPE_SOUNDALIVE:Ljava/util/UUID;

.field public static final PARAM_3DPA:I = 0xd

.field public static final PARAM_BAND_FREQ_RANGE:I = 0x4

.field public static final PARAM_BAND_LEVEL:I = 0x2

.field public static final PARAM_CENTER_FREQ:I = 0x3

.field public static final PARAM_CURRENT_PRESET:I = 0x6

.field public static final PARAM_EQUALIZER_COORDINATOR:I = 0xb

.field public static final PARAM_GET_BAND:I = 0x5

.field public static final PARAM_GET_NUM_OF_PRESETS:I = 0x7

.field public static final PARAM_GET_PRESET_NAME:I = 0x8

.field public static final PARAM_HMT:I = 0xc

.field public static final PARAM_LEVEL_RANGE:I = 0x1

.field public static final PARAM_NUM_BANDS:I = 0x0

.field private static final PARAM_PROPERTIES:I = 0x9

.field public static final PARAM_STRENGTH:I = 0xa

.field public static final PARAM_STRING_SIZE_MAX:I = 0x20

.field public static final PRESET_CLASSIC:I = 0x4

.field public static final PRESET_JAZZ:I = 0x3

.field public static final PRESET_NORMAL:I = 0x0

.field public static final PRESET_POP:I = 0x1

.field public static final PRESET_ROCK:I = 0x2

.field public static final PRESET_USER:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SemSoundAlive"


# instance fields
.field private mBaseErrorListener:Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;

.field private mBaseParamListener:Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;

.field private mErrorListener:Landroid/media/audiofx/SemSoundAlive$OnErrorListener;

.field private final mErrorListenerLock:Ljava/lang/Object;

.field private mNumBands:S

.field private mNumPresets:I

.field private mParamListener:Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mPresetNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "c4da1d1f-7cdf-42e2-ba60-efc7eb3508a3"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/SemSoundAlive;->EFFECT_TYPE_SOUNDALIVE:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Landroid/media/audiofx/SemSoundAlive;->EFFECT_TYPE_SOUNDALIVE:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/SemSoundAlive;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    const/4 v0, 0x0

    iput-short v0, p0, Landroid/media/audiofx/SemSoundAlive;->mNumBands:S

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/audiofx/SemSoundAlive;->mParamListener:Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;

    iput-object v1, p0, Landroid/media/audiofx/SemSoundAlive;->mBaseParamListener:Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/audiofx/SemSoundAlive;->mParamListenerLock:Ljava/lang/Object;

    iput-object v1, p0, Landroid/media/audiofx/SemSoundAlive;->mErrorListener:Landroid/media/audiofx/SemSoundAlive$OnErrorListener;

    iput-object v1, p0, Landroid/media/audiofx/SemSoundAlive;->mBaseErrorListener:Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/audiofx/SemSoundAlive;->mErrorListenerLock:Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string v1, "SemSoundAlive"

    const-string v2, "WARNING: attaching an SemSoundAlive to global output mix is deprecated!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/media/audiofx/SemSoundAlive;->getNumberOfBands()S

    invoke-virtual {p0}, Landroid/media/audiofx/SemSoundAlive;->getNumberOfPresets()S

    move-result v1

    iput v1, p0, Landroid/media/audiofx/SemSoundAlive;->mNumPresets:I

    iget v1, p0, Landroid/media/audiofx/SemSoundAlive;->mNumPresets:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/media/audiofx/SemSoundAlive;->mNumPresets:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/media/audiofx/SemSoundAlive;->mPresetNames:[Ljava/lang/String;

    const/16 v1, 0x20

    new-array v1, v1, [B

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/16 v3, 0x8

    aput v3, v2, v0

    move v3, v0

    :goto_0
    iget v4, p0, Landroid/media/audiofx/SemSoundAlive;->mNumPresets:I

    if-ge v3, v4, :cond_2

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/SemSoundAlive;->getParameter([I[B)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    move v4, v0

    :goto_1
    aget-byte v5, v1, v4

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/media/audiofx/SemSoundAlive;->mPresetNames:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const-string v7, "ISO-8859-1"

    invoke-direct {v6, v1, v0, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    const-string v6, "SemSoundAlive"

    const-string/jumbo v7, "preset name decode error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/SemSoundAlive;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/audiofx/SemSoundAlive;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/SemSoundAlive;)Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/media/audiofx/SemSoundAlive;->mParamListener:Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/audiofx/SemSoundAlive;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/audiofx/SemSoundAlive;->mErrorListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/audiofx/SemSoundAlive;)Landroid/media/audiofx/SemSoundAlive$OnErrorListener;
    .locals 1

    iget-object v0, p0, Landroid/media/audiofx/SemSoundAlive;->mErrorListener:Landroid/media/audiofx/SemSoundAlive$OnErrorListener;

    return-object v0
.end method


# virtual methods
.method public getBand(I)S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    new-array v2, v1, [S

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v0, v3

    aput p1, v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/SemSoundAlive;->getParameter([I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    aget-short v1, v2, v3

    return v1
.end method

.method public getBandFreqRange(S)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SemSoundAlive;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    return-object v0
.end method

.method public getBandLevel(S)S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    new-array v3, v2, [S

    const/4 v4, 0x0

    aput v0, v1, v4

    aput p1, v1, v2

    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/SemSoundAlive;->getParameter([I[S)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    aget-short v0, v3, v4

    return v0
.end method

.method public getBandLevelRange()[S
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [S

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SemSoundAlive;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    return-object v0
.end method

.method public getCenterFreq(S)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v0, v3

    aput p1, v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/SemSoundAlive;->getParameter([I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    aget v1, v2, v3

    return v1
.end method

.method public getCurrentPreset()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SemSoundAlive;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getNumberOfBands()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-short v0, p0, Landroid/media/audiofx/SemSoundAlive;->mNumBands:S

    if-eqz v0, :cond_0

    iget-short v0, p0, Landroid/media/audiofx/SemSoundAlive;->mNumBands:S

    return v0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    new-array v0, v0, [S

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SemSoundAlive;->getParameter([I[S)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    aget-short v2, v0, v2

    iput-short v2, p0, Landroid/media/audiofx/SemSoundAlive;->mNumBands:S

    iget-short v2, p0, Landroid/media/audiofx/SemSoundAlive;->mNumBands:S

    return v2
.end method

.method public getNumberOfPresets()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SemSoundAlive;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getParameter(I[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/SemSoundAlive;->intToByteArray(I)[B

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    return v1
.end method

.method public getPresetName(S)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Landroid/media/audiofx/SemSoundAlive;->mNumPresets:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/SemSoundAlive;->mPresetNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getProperties()Landroid/media/audiofx/SemSoundAlive$Settings;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-short v0, p0, Landroid/media/audiofx/SemSoundAlive;->mNumBands:S

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    const/4 v2, 0x4

    add-int/2addr v0, v2

    new-array v0, v0, [B

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v0}, Landroid/media/audiofx/SemSoundAlive;->getParameter(I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    new-instance v3, Landroid/media/audiofx/SemSoundAlive$Settings;

    invoke-direct {v3}, Landroid/media/audiofx/SemSoundAlive$Settings;-><init>()V

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/media/audiofx/SemSoundAlive;->byteArrayToShort([BI)S

    move-result v5

    iput-short v5, v3, Landroid/media/audiofx/SemSoundAlive$Settings;->curPreset:S

    invoke-static {v0, v1}, Landroid/media/audiofx/SemSoundAlive;->byteArrayToShort([BI)S

    move-result v5

    iput-short v5, v3, Landroid/media/audiofx/SemSoundAlive$Settings;->numBands:S

    iget-short v5, p0, Landroid/media/audiofx/SemSoundAlive;->mNumBands:S

    new-array v5, v5, [S

    iput-object v5, v3, Landroid/media/audiofx/SemSoundAlive$Settings;->bandLevels:[S

    nop

    :goto_0
    iget-short v5, p0, Landroid/media/audiofx/SemSoundAlive;->mNumBands:S

    if-ge v4, v5, :cond_0

    iget-object v5, v3, Landroid/media/audiofx/SemSoundAlive$Settings;->bandLevels:[S

    mul-int v6, v1, v4

    add-int/2addr v6, v2

    invoke-static {v0, v6}, Landroid/media/audiofx/SemSoundAlive;->byteArrayToShort([BI)S

    move-result v6

    aput-short v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public getRoundedStrength(S)S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    new-array v2, v1, [S

    const/4 v3, 0x0

    const/16 v4, 0xa

    aput v4, v0, v3

    aput p1, v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/SemSoundAlive;->getParameter([I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    aget-short v1, v2, v3

    return v1
.end method

.method public getSpeakerCount()I
    .locals 1

    const-string v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public set3dEffectPosition(ZD)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v0, v0, p2

    if-gtz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0xd

    const/4 v4, 0x0

    aput v3, v0, v4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    aput v3, v0, v1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, p2

    double-to-int v3, v5

    aput v3, v2, v4

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemSoundAlive;->setEnabled(Z)I

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/SemSoundAlive;->setParameter([I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    :cond_1
    return-void
.end method

.method public setBandLevel(SS)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    new-array v3, v2, [S

    const/4 v4, 0x0

    aput v0, v1, v4

    aput p1, v1, v2

    aput-short p2, v3, v4

    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/SemSoundAlive;->setParameter([I[S)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    return-void
.end method

.method public setEqCoordinator(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xb

    aput v4, v1, v3

    aput p1, v2, v3

    aput p2, v2, v0

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/SemSoundAlive;->setParameter([I[I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    return-void
.end method

.method public setErrorListener(Landroid/media/audiofx/SemSoundAlive$OnErrorListener;)V
    .locals 3

    iget-object v0, p0, Landroid/media/audiofx/SemSoundAlive;->mErrorListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/SemSoundAlive;->mErrorListener:Landroid/media/audiofx/SemSoundAlive$OnErrorListener;

    if-nez v1, :cond_0

    iput-object p1, p0, Landroid/media/audiofx/SemSoundAlive;->mErrorListener:Landroid/media/audiofx/SemSoundAlive$OnErrorListener;

    new-instance v1, Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;-><init>(Landroid/media/audiofx/SemSoundAlive;Landroid/media/audiofx/SemSoundAlive$1;)V

    iput-object v1, p0, Landroid/media/audiofx/SemSoundAlive;->mBaseErrorListener:Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;

    iget-object v1, p0, Landroid/media/audiofx/SemSoundAlive;->mBaseErrorListener:Landroid/media/audiofx/SemSoundAlive$BaseErrorListener;

    invoke-super {p0, v1}, Landroid/media/audiofx/AudioEffect;->setErrorListener(Landroid/media/audiofx/AudioEffect$OnErrorListener;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHMT(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xc

    aput v4, v0, v3

    aput p1, v0, v1

    aput p2, v2, v3

    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;)V
    .locals 3

    iget-object v0, p0, Landroid/media/audiofx/SemSoundAlive;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/SemSoundAlive;->mParamListener:Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;

    if-nez v1, :cond_0

    iput-object p1, p0, Landroid/media/audiofx/SemSoundAlive;->mParamListener:Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;

    new-instance v1, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;-><init>(Landroid/media/audiofx/SemSoundAlive;Landroid/media/audiofx/SemSoundAlive$1;)V

    iput-object v1, p0, Landroid/media/audiofx/SemSoundAlive;->mBaseParamListener:Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;

    iget-object v1, p0, Landroid/media/audiofx/SemSoundAlive;->mBaseParamListener:Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;

    invoke-super {p0, v1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setProperties(Landroid/media/audiofx/SemSoundAlive$Settings;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-short v0, p1, Landroid/media/audiofx/SemSoundAlive$Settings;->numBands:S

    iget-object v1, p1, Landroid/media/audiofx/SemSoundAlive$Settings;->bandLevels:[S

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-short v0, p1, Landroid/media/audiofx/SemSoundAlive$Settings;->numBands:S

    iget-short v1, p0, Landroid/media/audiofx/SemSoundAlive;->mNumBands:S

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    new-array v1, v0, [[B

    iget-short v2, p1, Landroid/media/audiofx/SemSoundAlive$Settings;->curPreset:S

    invoke-static {v2}, Landroid/media/audiofx/SemSoundAlive;->shortToByteArray(S)[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-short v2, p0, Landroid/media/audiofx/SemSoundAlive;->mNumBands:S

    invoke-static {v2}, Landroid/media/audiofx/SemSoundAlive;->shortToByteArray(S)[B

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Landroid/media/audiofx/SemSoundAlive;->concatArrays([[B)[B

    move-result-object v1

    move-object v2, v1

    move v1, v3

    :goto_0
    iget-short v5, p0, Landroid/media/audiofx/SemSoundAlive;->mNumBands:S

    if-ge v1, v5, :cond_0

    new-array v5, v0, [[B

    aput-object v2, v5, v3

    iget-object v6, p1, Landroid/media/audiofx/SemSoundAlive$Settings;->bandLevels:[S

    aget-short v6, v6, v1

    invoke-static {v6}, Landroid/media/audiofx/SemSoundAlive;->shortToByteArray(S)[B

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v5}, Landroid/media/audiofx/SemSoundAlive;->concatArrays([[B)[B

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/SemSoundAlive;->setParameter(I[B)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settings invalid band count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p1, Landroid/media/audiofx/SemSoundAlive$Settings;->numBands:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrength(SS)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    new-array v2, v1, [S

    const/4 v3, 0x0

    const/16 v4, 0xa

    aput v4, v0, v3

    aput p1, v0, v1

    aput-short p2, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/SemSoundAlive;->setParameter([I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    return-void
.end method

.method public usePreset(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/SemSoundAlive;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SemSoundAlive;->checkStatus(I)V

    return-void
.end method
