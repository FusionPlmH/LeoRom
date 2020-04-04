.class Lcom/samsung/android/speech/AudioTask;
.super Ljava/lang/Object;
.source "AudioTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final DEFAULT_BLOCK_SIZE:I = 0x140


# instance fields
.field protected AUDIO_RECORD_FOR_BARGE_IN:I

.field protected AUDIO_RECORD_FOR_BARGE_IN_OEM:I

.field protected AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

.field private AUDIO_START:I

.field public BargeinAct:[S

.field private CMscore:F

.field private final RECOGNITION_WAIT_TIME:I

.field private THscore:D

.field private aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

.field private acousticModelPathname:Ljava/lang/String;

.field private acousticModelPathname_sub:Ljava/lang/String;

.field private block_size:I

.field public cmResult:[F

.field private consoleInitReturn:J

.field private defaultloadNameList:Ljava/lang/String;

.field private done:Z

.field private dualThresholdFlag:I

.field private f:Ljava/io/File;

.field private handler:Landroid/os/Handler;

.field private isEnableSamsungOOVResult:Z

.field private isMakePCM:Z

.field private isOEMCameraBargeIn:Z

.field private isOEMResult:Z

.field private loadNameList:Ljava/lang/String;

.field private loadPath:Ljava/lang/String;

.field private mCommandType:I

.field private mDataOutputStream:Ljava/io/DataOutputStream;

.field private mEmbeddedEngineLanguage:I

.field private mLanguage:I

.field private mStopHandler:Landroid/os/Handler;

.field private mTAG:Ljava/lang/String;

.field private m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

.field private modelPath:Ljava/lang/String;

.field private numRecogResult:I

.field private q:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[S>;"
        }
    .end annotation
.end field

.field private readNshorts:I

.field public rec:Landroid/media/AudioRecord;

.field private recogAfterReadCount:I

.field private searchGrammarPathname:Ljava/lang/String;

.field private searchGrammarPathname_sub:Ljava/lang/String;

.field public strResult:[Ljava/lang/String;

.field private totalReadCount:I

.field public utfResult:[Ljava/lang/String;

.field private wordListPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    iput-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn:J

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v4, v3, v1

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    new-array v5, v2, [S

    const/4 v6, -0x1

    aput-short v6, v5, v1

    iput-object v5, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->numRecogResult:I

    iput v4, p0, Lcom/samsung/android/speech/AudioTask;->CMscore:F

    iput-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isMakePCM:Z

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->loadPath:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    invoke-static {v1}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/speech/AudioTask;->loadNameList:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/speech/AudioTask;->defaultloadNameList:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "param"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/speech/AudioTask;->modelPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/media/MediaRecorder;->semGetInputSource(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    const/4 v2, 0x7

    invoke-static {v2}, Landroid/media/MediaRecorder;->semGetInputSource(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_OEM:I

    const/4 v2, 0x6

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->totalReadCount:I

    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_START:I

    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    const/16 v2, 0x64

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->RECOGNITION_WAIT_TIME:I

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->f:Ljava/io/File;

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    const-wide/high16 v2, -0x4008000000000000L    # -1.5

    iput-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/samsung/android/speech/Config;->GetOEMAM(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_v2.raw"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/AudioTask;->acousticModelPathname:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v3}, Lcom/samsung/android/speech/Config;->GetOEMGRAMMAR(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_v2.raw"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/AudioTask;->searchGrammarPathname:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v3}, Lcom/samsung/android/speech/Config;->GetOEMAM(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_v2_2.raw"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/AudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v3}, Lcom/samsung/android/speech/Config;->GetOEMGRAMMAR(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_v2_2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/AudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    iput v6, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isOEMCameraBargeIn:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isOEMResult:Z

    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    new-instance v0, Lcom/samsung/android/speech/AudioTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/speech/AudioTask$1;-><init>(Lcom/samsung/android/speech/AudioTask;)V

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->handler:Landroid/os/Handler;

    return-void
.end method

.method private SendHandlerMessage([Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "recognition_result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/speech/AudioTask;->stop()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/speech/AudioTask;)Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    return-object v0
.end method

.method private getMMUIRecognitionResult([SI)I
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1, p1}, Lcom/samsung/android/speech/MMUIRecognizer;->RECThread([S)I

    move-result v0

    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : getMMUIRecognitionResult - Section1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return p2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v2, "Barge-in : Too long input so Reset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/samsung/android/speech/MMUIRecognizer;->ResetFx()I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : getMMUIRecognitionResult - Section2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return p2

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : getMMUIRecognitionResult - Section3"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return p2

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v2}, Lcom/samsung/android/speech/MMUIRecognizer;->ResetFx()I

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const-string v6, "/system/voicebargeindata/sasr/input.txt"

    iget-object v7, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    iget-object v8, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRDoRecognition([F[Ljava/lang/String;Ljava/lang/String;[S[Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->numRecogResult:I

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v5, 0x20

    const/16 v6, 0x5f

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    if-ne v2, v1, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    aget-object v3, v3, v4

    aput-object v3, v2, v4

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "numResult[0] : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    aget v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "strResult[0] : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BargeinAct[0] : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aget-short v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aget-short v2, v2, v4

    if-ne v2, v1, :cond_7

    const-wide v1, -0x4003333333333333L    # -1.8

    iput-wide v1, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    goto :goto_0

    :cond_8
    const-wide/high16 v1, -0x4008000000000000L    # -1.5

    iput-wide v1, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "THscore : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v3, "readByteBlock return -1 : getMMUIRecognitionResult - Section4"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isOEMCameraBargeIn:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isOEMResult:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "isOEMCameraBargeIn is true and isOEMResult is true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EmbeddedEngine Recognizer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/speech/AudioTask;->isOEMResult:Z

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set isOEMResult = false. So isOEMResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/speech/AudioTask;->isOEMResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v3, "isOEMCameraBargeIn is true and keyword is not detected by OEM and keyword or non-keyword is detected by embeddedEngine."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const-string v3, "TH-Reject"

    aput-object v3, v1, v4

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v2, v1, v4

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    aget v1, v1, v4

    float-to-double v5, v1

    iget-wide v7, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    cmpl-double v1, v5, v7

    if-lez v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const-string v3, "TH-Reject"

    aput-object v3, v1, v4

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v2, v1, v4

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : Section13"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return p2

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    :cond_e
    return p2
.end method

.method public static swap(S)S
    .locals 4

    and-int/lit16 v0, p0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    or-int/2addr v2, v3

    int-to-short v2, v2

    return v2
.end method

.method public static swap([S)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-short v1, p0, v0

    invoke-static {v1}, Lcom/samsung/android/speech/AudioTask;->swap(S)S

    move-result v1

    aput-short v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static twoBytesToShort(BB)S
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method protected getAudioRecord(I)Landroid/media/AudioRecord;
    .locals 13

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v2, "getAudioRecord modified by jy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2000

    const/4 v2, 0x2

    const/16 v3, 0x10

    const/16 v4, 0x3e80

    const/4 v5, 0x0

    :try_start_0
    new-instance v12, Landroid/media/AudioRecord;

    const/16 v8, 0x3e80

    const/16 v9, 0x10

    const/4 v10, 0x2

    const/16 v11, 0x2000

    move-object v6, v12

    move v7, p1

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    move-object v0, v12

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAudioRecord for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "=false, got !initialized"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    return-object v5

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got AudioRecord using source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", also "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioRecord for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAudioRecord for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "=false, IllegalArgumentException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got IllegalArgumentException using source="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", also "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-object v5

    :goto_0
    throw v1
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    return v0
.end method

.method public getQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[S>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[S>;I",
            "Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v1, "AudioTask init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Language : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    iput-object p1, p0, Lcom/samsung/android/speech/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    iput p2, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    iput p5, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    iput-object p3, p0, Lcom/samsung/android/speech/AudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    iput-object p4, p0, Lcom/samsung/android/speech/AudioTask;->loadPath:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v2, -0x1

    aput-short v2, v1, v0

    return-void
.end method

.method protected isBargeInFile(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "run start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBlockSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    return-void
.end method

.method public setEmbeddedEngineLanguage()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isOEMCameraBargeIn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xd

    const/4 v2, 0x2

    if-ne v0, v1, :cond_4

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_6

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEmbeddedEngineLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    return-void
.end method

.method public setSamsungFilePath(II)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->wordListPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->modelPath:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->loadNameList:Ljava/lang/String;

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v1, "AudioTask : stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v1, "AudioTask : stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopBargeInAudioRecord()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v1, "Call rec.stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v1, "Call rec.stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v1, "Call rec.release start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v1, "Call rec.release end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "rec = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
