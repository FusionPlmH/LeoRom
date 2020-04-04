.class Lcom/samsung/android/speech/OEMAudioTask;
.super Lcom/samsung/android/speech/AudioTask;
.source "OEMAudioTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final DEFAULT_BLOCK_SIZE:I = 0xa0


# instance fields
.field private AUDIO_START:I

.field public OEMCMscore:F

.field public OEMChineseCaptureCMTH:F

.field public OEMChineseStopCMTH:F

.field public OEMJapaneseShootCMTH:F

.field public OEMKoreanCancelCMTH:F

.field public OEMKoreanRejectCMTH:F

.field public OEMKoreanShootCMTH:F

.field public OEMKoreanStopCMTH:F

.field public OEMRussianCheeseCMTH:F

.field public OEMUKEnglishStopCMTH:F

.field public OEMUSEnglishCaptureCMTH:F

.field public OEMUSEnglishCheeseCMTH:F

.field public OEMUSEnglishRecordVideoCMTH:F

.field public OEMUSEnglishShootCMTH:F

.field public OEMUSEnglishSnoozeCMTH:F

.field public OEMUSEnglishStopCMTH:F

.field private final RECOGNITION_WAIT_TIME:I

.field private TAG:Ljava/lang/String;

.field public THscore:D

.field private aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

.field private aOemBargeInEngine:Lcom/samsung/oem/OemBargeInEngine;

.field private acousticModelPathname:Ljava/lang/String;

.field private acousticModelPathname_sub:Ljava/lang/String;

.field public block_size:I

.field public buf:[B

.field public consoleInitReturn:J

.field public consoleInitReturn_sub:J

.field public defaultloadNameList:Ljava/lang/String;

.field public done:Z

.field private dualThresholdFlag:I

.field public f:Ljava/io/File;

.field private handler:Landroid/os/Handler;

.field public isCameraBargeIn:Z

.field public isCancelBargeIn:Z

.field public isEnableSamsungOOVResult:Z

.field private isMakePCM:Z

.field public isOEMBargeInEnable:Z

.field public isOEMCameraBargeIn:Z

.field public isOEMResult:Z

.field public isSASRInitProblem:Z

.field public isSubModelBargeInEnable:Z

.field public loadNameList:Ljava/lang/String;

.field public loadPath:Ljava/lang/String;

.field public mCommandType:I

.field public mDataOutputStream:Ljava/io/DataOutputStream;

.field public mEmbeddedEngineLanguage:I

.field public mLanguage:I

.field public mStopHandler:Landroid/os/Handler;

.field private m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

.field public modelPath:Ljava/lang/String;

.field public numRecogResult:I

.field public q:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[S>;"
        }
    .end annotation
.end field

.field private readNshorts:I

.field private recogAfterReadCount:I

.field public resultSASRInit:I

.field public resultSASRLoadModel:I

.field private searchGrammarPathname:Ljava/lang/String;

.field private searchGrammarPathname_sub:Ljava/lang/String;

.field public speech:[S

.field private totalReadCount:I

.field public wordListPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 10

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/speech/AudioTask;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    const-class v0, Lcom/samsung/android/speech/OEMAudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->block_size:I

    iput-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aOemBargeInEngine:Lcom/samsung/oem/OemBargeInEngine;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->consoleInitReturn:J

    iput-wide v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->consoleInitReturn_sub:J

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->numRecogResult:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMCMscore:F

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->speech:[S

    iput-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isMakePCM:Z

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->loadPath:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->mCommandType:I

    invoke-static {v1}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->loadNameList:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->defaultloadNameList:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->mLanguage:I

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "param"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->modelPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->wordListPath:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->totalReadCount:I

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->AUDIO_START:I

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->recogAfterReadCount:I

    const/16 v2, 0x64

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->RECOGNITION_WAIT_TIME:I

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->f:Ljava/io/File;

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    const-wide/high16 v2, -0x4008000000000000L    # -1.5

    iput-wide v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->THscore:D

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

    iput-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->acousticModelPathname:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v3}, Lcom/samsung/android/speech/Config;->GetOEMGRAMMAR(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_v2.raw"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->searchGrammarPathname:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v3}, Lcom/samsung/android/speech/Config;->GetOEMAM(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_v2_2.raw"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v3}, Lcom/samsung/android/speech/Config;->GetOEMGRAMMAR(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_v2_2.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMBargeInEnable:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMCameraBargeIn:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isCameraBargeIn:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isCancelBargeIn:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isEnableSamsungOOVResult:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isSubModelBargeInEnable:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    iput-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMResult:Z

    const/high16 v2, 0x42c80000    # 100.0f

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMKoreanRejectCMTH:F

    const/high16 v3, 0x43160000    # 150.0f

    iput v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMKoreanCancelCMTH:F

    const/high16 v4, 0x43c80000    # 400.0f

    iput v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMKoreanShootCMTH:F

    iput v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMKoreanStopCMTH:F

    const/high16 v5, 0x44480000    # 800.0f

    iput v5, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMChineseCaptureCMTH:F

    const/high16 v5, 0x43020000    # 130.0f

    iput v5, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMChineseStopCMTH:F

    iput v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMJapaneseShootCMTH:F

    iput v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMUSEnglishStopCMTH:F

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMUSEnglishSnoozeCMTH:F

    const/high16 v2, 0x43960000    # 300.0f

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMRussianCheeseCMTH:F

    iput v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMUSEnglishShootCMTH:F

    const/high16 v2, 0x437a0000    # 250.0f

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMUSEnglishRecordVideoCMTH:F

    iput v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMUSEnglishCheeseCMTH:F

    const/high16 v2, 0x43e10000    # 450.0f

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMUSEnglishCaptureCMTH:F

    iput v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMUKEnglishStopCMTH:F

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->resultSASRLoadModel:I

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->resultSASRInit:I

    iput-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isSASRInitProblem:Z

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mStopHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->dualThresholdFlag:I

    new-instance v0, Lcom/samsung/android/speech/OEMAudioTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/speech/OEMAudioTask$1;-><init>(Lcom/samsung/android/speech/OEMAudioTask;)V

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "super()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v4, 0xa0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/speech/OEMAudioTask;->init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private SendHandlerMessage([Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "recognition_result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/samsung/android/speech/OEMAudioTask;->stop()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/speech/OEMAudioTask;)Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    return-object v0
.end method

.method private getMMUIRecognitionResult([SI)I
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1, p1}, Lcom/samsung/android/speech/MMUIRecognizer;->RECThread([S)I

    move-result v0

    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : getMMUIRecognitionResult - Section1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return p2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v2, "Barge-in : Too long input so Reset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/samsung/android/speech/MMUIRecognizer;->ResetFx()I

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : getMMUIRecognitionResult - Section2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return p2

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : getMMUIRecognitionResult - Section3"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return p2

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v2}, Lcom/samsung/android/speech/MMUIRecognizer;->ResetFx()I

    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget-object v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->cmResult:[F

    iget-object v5, p0, Lcom/samsung/android/speech/OEMAudioTask;->strResult:[Ljava/lang/String;

    const-string v6, "/system/voicebargeindata/sasr/input.txt"

    iget-object v7, p0, Lcom/samsung/android/speech/OEMAudioTask;->BargeinAct:[S

    iget-object v8, p0, Lcom/samsung/android/speech/OEMAudioTask;->utfResult:[Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRDoRecognition([F[Ljava/lang/String;Ljava/lang/String;[S[Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->numRecogResult:I

    iget-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->strResult:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->strResult:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v5, 0x20

    const/16 v6, 0x5f

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    if-ne v2, v1, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->utfResult:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->utfResult:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->strResult:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->utfResult:[Ljava/lang/String;

    aget-object v3, v3, v4

    aput-object v3, v2, v4

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "numResult[0] : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/speech/OEMAudioTask;->cmResult:[F

    aget v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "strResult[0] : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/speech/OEMAudioTask;->strResult:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BargeinAct[0] : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/speech/OEMAudioTask;->BargeinAct:[S

    aget-short v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->mCommandType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->BargeinAct:[S

    aget-short v2, v2, v4

    if-ne v2, v1, :cond_7

    const-wide v1, -0x4003333333333333L    # -1.8

    iput-wide v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->THscore:D

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->mCommandType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->THscore:D

    goto :goto_0

    :cond_8
    const-wide/high16 v1, -0x4008000000000000L    # -1.5

    iput-wide v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->THscore:D

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "THscore : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/samsung/android/speech/OEMAudioTask;->THscore:D

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "readByteBlock return -1 : getMMUIRecognitionResult - Section4"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMCameraBargeIn:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMResult:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isOEMCameraBargeIn is true and isOEMResult is true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EmbeddedEngine Recognizer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->BargeinAct:[S

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMResult:Z

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set isOEMResult = false. So isOEMResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isOEMCameraBargeIn is true and keyword is not detected by OEM and keyword or non-keyword is detected by embeddedEngine."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->strResult:[Ljava/lang/String;

    const-string v3, "TH-Reject"

    aput-object v3, v1, v4

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->BargeinAct:[S

    aput-short v2, v1, v4

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/OEMAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->cmResult:[F

    aget v1, v1, v4

    float-to-double v5, v1

    iget-wide v7, p0, Lcom/samsung/android/speech/OEMAudioTask;->THscore:D

    cmpl-double v1, v5, v7

    if-lez v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/OEMAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->strResult:[Ljava/lang/String;

    const-string v3, "TH-Reject"

    aput-object v3, v1, v4

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->BargeinAct:[S

    aput-short v2, v1, v4

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/OEMAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : Section13"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    return p2

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    :cond_e
    return p2
.end method

.method private getOEMRecognitionResult(J[S)Z
    .locals 15

    move-object v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    iget v3, v0, Lcom/samsung/android/speech/OEMAudioTask;->dualThresholdFlag:I

    const/4 v14, 0x1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v2, v14

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/samsung/android/speech/OEMAudioTask;->dualThresholdFlag:I

    int-to-float v3, v3

    aput v3, v2, v14

    :goto_0
    iget-object v3, v0, Lcom/samsung/android/speech/OEMAudioTask;->aOemBargeInEngine:Lcom/samsung/oem/OemBargeInEngine;

    const-wide/16 v7, 0xa0

    const-wide/16 v9, 0x3e80

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object v11, v2

    invoke-virtual/range {v3 .. v11}, Lcom/samsung/oem/OemBargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v1

    aget v3, v2, v14

    float-to-int v3, v3

    iput v3, v0, Lcom/samsung/android/speech/OEMAudioTask;->dualThresholdFlag:I

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v4, v0, Lcom/samsung/android/speech/OEMAudioTask;->BargeinAct:[S

    iget v5, v0, Lcom/samsung/android/speech/OEMAudioTask;->mCommandType:I

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/speech/OEMAudioTask;->getOEMBargeInAct(ILjava/lang/String;)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v3

    iget-object v4, v0, Lcom/samsung/android/speech/OEMAudioTask;->strResult:[Ljava/lang/String;

    aput-object v1, v4, v3

    aget v12, v2, v3

    iget-object v4, v0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "consoleResult : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strResult[0] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/speech/OEMAudioTask;->strResult:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BargeinAct[0] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/speech/OEMAudioTask;->BargeinAct:[S

    aget-short v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OEMCMscore : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dualThresholdFlag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/samsung/android/speech/OEMAudioTask;->dualThresholdFlag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/samsung/android/speech/OEMAudioTask;->BargeinAct:[S

    aget-short v4, v4, v3

    move-wide/from16 v5, p1

    invoke-direct {v0, v5, v6, v4, v12}, Lcom/samsung/android/speech/OEMAudioTask;->resultOEMOOV(JIF)Z

    move-result v13

    if-nez v13, :cond_4

    iget-boolean v4, v0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMCameraBargeIn:Z

    if-nez v4, :cond_1

    iget-object v3, v0, Lcom/samsung/android/speech/OEMAudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/samsung/android/speech/OEMAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    return v14

    :cond_1
    iget v4, v0, Lcom/samsung/android/speech/OEMAudioTask;->recogAfterReadCount:I

    if-nez v4, :cond_4

    iput v14, v0, Lcom/samsung/android/speech/OEMAudioTask;->recogAfterReadCount:I

    iget-object v3, v0, Lcom/samsung/android/speech/OEMAudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/samsung/android/speech/OEMAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/samsung/android/speech/OEMAudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v3, :cond_2

    iput-boolean v14, v0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMResult:Z

    iget-object v3, v0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set isOEMResult = true. So isOEMResult : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMResult:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v14

    :cond_3
    move-wide/from16 v5, p1

    :cond_4
    return v3
.end method

.method private resultOEMOOV(JIF)Z
    .locals 9

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mCommandType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mLanguage:I

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-ne p3, v1, :cond_f

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMKoreanRejectCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Korean reject score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mCommandType:I

    const/4 v3, 0x7

    const/16 v4, 0xa

    const/4 v5, 0x3

    if-ne v0, v3, :cond_a

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mLanguage:I

    const/4 v3, 0x5

    const/4 v6, 0x4

    if-eq v0, v4, :cond_6

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    if-ne p3, v1, :cond_f

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMRussianCheeseCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Russian cheese score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_1
    if-ne p3, v6, :cond_f

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMJapaneseShootCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Japanese shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_2
    if-ne p3, v5, :cond_f

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMChineseCaptureCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Chinese capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_3
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->dualThresholdFlag:I

    if-ne v0, v2, :cond_f

    const/high16 v0, 0x43960000    # 300.0f

    if-ne p3, v2, :cond_2

    cmpg-float v4, p4, v0

    if-gez v4, :cond_2

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Korean smile score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    if-ne p3, v5, :cond_3

    cmpg-float v0, p4, v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Korean capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    if-ne p3, v1, :cond_4

    const/high16 v0, 0x44960000    # 1200.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Korean cheese score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    if-ne p3, v6, :cond_5

    const/high16 v0, 0x43c80000    # 400.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Korean shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    if-ne p3, v3, :cond_f

    const/high16 v0, 0x44480000    # 800.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Korean record video score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    :pswitch_4
    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isSubModelBargeInEnable:Z

    if-eqz v0, :cond_f

    iget-wide v7, p0, Lcom/samsung/android/speech/OEMAudioTask;->consoleInitReturn_sub:J

    cmp-long v0, p1, v7

    if-nez v0, :cond_f

    if-ne p3, v1, :cond_7

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMUSEnglishCheeseCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Sub English cheese score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    if-ne p3, v5, :cond_8

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMUSEnglishCaptureCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Sub English capture score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    if-ne p3, v6, :cond_9

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMUSEnglishShootCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Sub English shoot score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    if-ne p3, v3, :cond_f

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMUSEnglishRecordVideoCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Sub English record video score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_a
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mCommandType:I

    if-ne v0, v5, :cond_d

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mLanguage:I

    if-eq v0, v4, :cond_c

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    if-ne p3, v2, :cond_f

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMChineseStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Chinese stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_6
    if-ne p3, v2, :cond_b

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMUSEnglishStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "US English stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_b
    if-ne p3, v1, :cond_f

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMUSEnglishSnoozeCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "US English snooze score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_7
    if-ne p3, v2, :cond_f

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMKoreanStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Korean stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_c
    if-ne p3, v2, :cond_f

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMUKEnglishStopCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "UK English stop score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_d
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mCommandType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mLanguage:I

    if-eqz v0, :cond_e

    goto :goto_0

    :cond_e
    if-ne p3, v2, :cond_f

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->OEMKoreanCancelCMTH:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Korean cancel score is low. So rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_f
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
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
.method public getOEMBargeInAct(ILjava/lang/String;)I
    .locals 8

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    const-string/jumbo v0, "yes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6

    :cond_0
    const-string/jumbo v0, "no"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    return v5

    :pswitch_1
    const-string v0, "cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    return v6

    :pswitch_2
    const-string v7, "buddy photo share"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "buddy_photo_share"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "buddyphotoshare"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "next"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v5

    :cond_2
    const-string/jumbo v5, "previous"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v4

    :cond_3
    const-string/jumbo v4, "play"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v3

    :cond_4
    const-string/jumbo v3, "slideshow"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    const-string/jumbo v2, "stop"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v1

    :cond_6
    const-string v1, "camera"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    return v0

    :cond_7
    :goto_0
    return v6

    :pswitch_3
    const-string/jumbo v7, "smile"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    return v6

    :cond_8
    const-string v6, "cheese"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    return v5

    :cond_9
    const-string v5, "capture"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    return v4

    :cond_a
    const-string/jumbo v4, "shoot"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    return v3

    :cond_b
    const-string/jumbo v3, "record video"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string/jumbo v3, "record_video"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string/jumbo v3, "recordvideo"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto/16 :goto_8

    :cond_c
    const-string v2, "auto settings"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "auto_settings"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "autosettings"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_7

    :cond_d
    const-string v1, "beauty face"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "beauty_face"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "beautyface"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_6

    :cond_e
    const-string/jumbo v0, "timer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8

    return v0

    :cond_f
    const-string/jumbo v0, "zoom in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "zoom_in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "zoomin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_5

    :cond_10
    const-string/jumbo v0, "zoom out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "zoom_out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "zoomout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4

    :cond_11
    const-string v0, "flash on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "flash_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "flashon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_3

    :cond_12
    const-string v0, "flash off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "flash_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "flashoff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_2

    :cond_13
    const-string/jumbo v0, "upload pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "upload_pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "uploadpics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1

    :cond_14
    const-string v0, "gallery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v0, 0xe

    return v0

    :cond_15
    :goto_1
    const/16 v0, 0xd

    return v0

    :cond_16
    :goto_2
    const/16 v0, 0xc

    return v0

    :cond_17
    :goto_3
    const/16 v0, 0xb

    return v0

    :cond_18
    :goto_4
    const/16 v0, 0xa

    return v0

    :cond_19
    :goto_5
    const/16 v0, 0x9

    return v0

    :cond_1a
    :goto_6
    return v0

    :cond_1b
    :goto_7
    return v1

    :cond_1c
    :goto_8
    return v2

    :pswitch_4
    const-string/jumbo v0, "next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v6

    :cond_1d
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return v5

    :cond_1e
    const-string/jumbo v0, "pause"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    return v4

    :cond_1f
    const-string/jumbo v0, "play"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    return v3

    :cond_20
    const-string/jumbo v0, "volume up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo v0, "volume_up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo v0, "volumeup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_9

    :cond_21
    const-string/jumbo v0, "volume down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string/jumbo v0, "volume_down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string/jumbo v0, "volumedown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_22
    return v1

    :cond_23
    :goto_9
    return v2

    :pswitch_5
    const-string/jumbo v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    return v6

    :cond_24
    const-string/jumbo v0, "snooze"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    return v5

    :pswitch_6
    const-string v0, "answer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    return v6

    :cond_25
    const-string/jumbo v0, "reject"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    return v5

    :pswitch_7
    const-string/jumbo v0, "next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    return v6

    :cond_26
    const-string/jumbo v0, "previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    return v5

    :pswitch_8
    const-string/jumbo v0, "stop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    return v6

    :cond_27
    :goto_a
    const/4 v0, -0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 5
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

    const-class v0, Lcom/samsung/android/speech/OEMAudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "OEMAudioTask init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Language : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    iput-object p1, p0, Lcom/samsung/android/speech/OEMAudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    iput p2, p0, Lcom/samsung/android/speech/OEMAudioTask;->block_size:I

    iput p5, p0, Lcom/samsung/android/speech/OEMAudioTask;->mCommandType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->rec:Landroid/media/AudioRecord;

    iput-object p3, p0, Lcom/samsung/android/speech/OEMAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    iput-object p4, p0, Lcom/samsung/android/speech/OEMAudioTask;->loadPath:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/speech/OEMAudioTask;->mLanguage:I

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->BargeinAct:[S

    const/4 v2, -0x1

    aput-short v2, v1, v0

    const/4 v1, 0x7

    if-ne p5, v1, :cond_0

    if-nez p6, :cond_0

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->dualThresholdFlag:I

    :cond_0
    invoke-virtual {p0, p6, p5}, Lcom/samsung/android/speech/OEMAudioTask;->setOEMFilePath(II)V

    iput-boolean p7, p0, Lcom/samsung/android/speech/OEMAudioTask;->isEnableSamsungOOVResult:Z

    const/16 v1, 0xa0

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->speech:[S

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOEMBargeInEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMBargeInEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnableSamsungOOVResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->isEnableSamsungOOVResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->totalReadCount:I

    iput v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->recogAfterReadCount:I

    iget-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isMakePCM:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/"

    const-string/jumbo v4, "testPCM.pcm"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->f:Ljava/io/File;

    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->f:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isCameraBargeIn:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isCancelBargeIn:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMBargeInEnable:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->AUDIO_START:I

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->AUDIO_RECORD_FOR_BARGE_IN_OEM:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/OEMAudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new AudioRecord : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->AUDIO_RECORD_FOR_BARGE_IN_OEM:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_1
    iput v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->AUDIO_START:I

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/OEMAudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new AudioRecord : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->rec:Landroid/media/AudioRecord;

    if-nez v0, :cond_5

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/OEMAudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new AudioRecord : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMBargeInEnable:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/samsung/oem/OemBargeInEngineWrapper;->getInstance()Lcom/samsung/oem/OemBargeInEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aOemBargeInEngine:Lcom/samsung/oem/OemBargeInEngine;

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aOemBargeInEngine:Lcom/samsung/oem/OemBargeInEngine;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aOemBargeInEngine:Lcom/samsung/oem/OemBargeInEngine;

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->acousticModelPathname:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/oem/OemBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->consoleInitReturn:J

    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isSubModelBargeInEnable:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aOemBargeInEngine:Lcom/samsung/oem/OemBargeInEngine;

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/oem/OemBargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->consoleInitReturn_sub:J

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "OemBargeInEngineWrapper.getInstance() is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMCameraBargeIn:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isEnableSamsungOOVResult:Z

    if-nez v0, :cond_9

    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMBargeInEnable:Z

    if-nez v0, :cond_f

    :cond_9
    invoke-static {}, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->getInstance()Lcom/samsung/android/speech/MMUIRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/speech/MMUIRecognizer;->SetSRLanguage(I)I

    :cond_a
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {p0, v0, p5}, Lcom/samsung/android/speech/OEMAudioTask;->setSamsungFilePath(II)V

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Load Model"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->modelPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRLoadModel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->resultSASRLoadModel:I

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->resultSASRLoadModel:I

    if-nez v0, :cond_b

    iput-boolean v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->isSASRInitProblem:Z

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Model result : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->resultSASRLoadModel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/OEMAudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wordlist is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Wordlist is not exist. So set default wordlist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->defaultloadNameList:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->loadNameList:Ljava/lang/String;

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Load Wordlist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isSASRInitProblem:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->loadNameList:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRInit(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->resultSASRInit:I

    :cond_d
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->resultSASRInit:I

    if-nez v0, :cond_e

    iput-boolean v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->isSASRInitProblem:Z

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Wordlist result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->resultSASRInit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isSASRInitProblem:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resultSASRLoadModel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->resultSASRLoadModel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resultSASRInit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->resultSASRInit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSASRInitProblem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->isSASRInitProblem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isOEMBargeinEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMBargeInEnable:Z

    return v0
.end method

.method readShortBlock()I
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isSASRInitProblem:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : isSASRInitProblem"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : Section1"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->rec:Landroid/media/AudioRecord;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->speech:[S

    iget-object v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->speech:[S

    array-length v4, v4

    invoke-virtual {v0, v3, v2, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : Section2"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    return v1

    :cond_3
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    const/16 v3, 0xa0

    if-ge v0, v3, :cond_4

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioRecord Read problem : nshorts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " command = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->mCommandType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " language : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->mLanguage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->totalReadCount:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "nshorts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    mul-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " command = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->mCommandType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " language : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->mLanguage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dualThr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->dualThresholdFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->totalReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->totalReadCount:I

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->recogAfterReadCount:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->recogAfterReadCount:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->recogAfterReadCount:I

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : Section3"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    return v1

    :cond_7
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    if-lez v0, :cond_11

    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : Section4"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    return v1

    :cond_8
    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMBargeInEnable:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    if-eqz v3, :cond_9

    iget-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "readByteBlock return -1 : Section5"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    return v1

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->aOemBargeInEngine:Lcom/samsung/oem/OemBargeInEngine;

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->totalReadCount:I

    iget v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->AUDIO_START:I

    if-le v3, v4, :cond_a

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->consoleInitReturn:J

    iget-object v6, p0, Lcom/samsung/android/speech/OEMAudioTask;->speech:[S

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/speech/OEMAudioTask;->getOEMRecognitionResult(J[S)Z

    move-result v3

    iget-boolean v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->isSubModelBargeInEnable:Z

    if-eqz v4, :cond_a

    iget-wide v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->consoleInitReturn_sub:J

    iget-object v6, p0, Lcom/samsung/android/speech/OEMAudioTask;->speech:[S

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/speech/OEMAudioTask;->getOEMRecognitionResult(J[S)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v5, "It is Recognized by sub Model"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->totalReadCount:I

    const/16 v4, 0x32

    if-le v3, v4, :cond_e

    iget-boolean v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMCameraBargeIn:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->isEnableSamsungOOVResult:Z

    if-nez v3, :cond_c

    :cond_b
    iget-boolean v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMBargeInEnable:Z

    if-nez v3, :cond_e

    :cond_c
    iget-boolean v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "readByteBlock return -1 : Section6"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    return v1

    :cond_d
    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->speech:[S

    iget v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/speech/OEMAudioTask;->getMMUIRecognitionResult([SI)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    iget v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    if-ne v3, v1, :cond_e

    return v1

    :cond_e
    iget-boolean v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->isMakePCM:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->speech:[S

    invoke-static {v1}, Lcom/samsung/android/speech/AudioTask;->swap([S)V

    nop

    :goto_0
    move v1, v2

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->speech:[S

    array-length v2, v2

    if-ge v1, v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->speech:[S

    aget-short v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_f
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_1
    goto :goto_2

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readNshorts is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " So do nothing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    return v0
.end method

.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "OEMAudioTask run()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.startRecording start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call startRecording end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/speech/OEMAudioTask;->readShortBlock()I

    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Bargein fail to start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/speech/OEMAudioTask;->stopBargeInAudioRecord()V

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "SASRClose start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isSASRInitProblem:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRClose()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SASRCloseReturn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "SASRClose end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aOemBargeInEngine:Lcom/samsung/oem/OemBargeInEngine;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "phrasespotClose start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->consoleInitReturn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aOemBargeInEngine:Lcom/samsung/oem/OemBargeInEngine;

    iget-wide v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->consoleInitReturn:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/oem/OemBargeInEngine;->phrasespotClose(J)V

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isSubModelBargeInEnable:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->consoleInitReturn_sub:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aOemBargeInEngine:Lcom/samsung/oem/OemBargeInEngine;

    iget-wide v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->consoleInitReturn_sub:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/oem/OemBargeInEngine;->phrasespotClose(J)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "phrasespotClose end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->aOemBargeInEngine:Lcom/samsung/oem/OemBargeInEngine;

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "aMMUIRecognizer = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "aOemBargeInEngine = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "m_listener = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "OEMAudioTask run end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mStopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void
.end method

.method public setEmbeddedEngineLanguage()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mLanguage:I

    iput v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMCameraBargeIn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xd

    const/4 v2, 0x2

    if-ne v0, v1, :cond_4

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_6

    iput v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEmbeddedEngineLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/speech/OEMAudioTask;->mStopHandler:Landroid/os/Handler;

    return-void
.end method

.method public setOEMFilePath(II)V
    .locals 7

    invoke-static {p1, p2}, Lcom/samsung/android/speech/Config;->GetOEMAM(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/samsung/android/speech/Config;->GetOEMGRAMMAR(II)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move-object v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_v2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_v2_2.raw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/system/lib/libOemBargeInEngine.so"

    invoke-virtual {p0, v4}, Lcom/samsung/android/speech/OEMAudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    const-string v4, "/system/lib64/libOemBargeInEngine.so"

    invoke-virtual {p0, v4}, Lcom/samsung/android/speech/OEMAudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/OEMAudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/speech/OEMAudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v5, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMBargeInEnable:Z

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->acousticModelPathname:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->searchGrammarPathname:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/speech/OEMAudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/samsung/android/speech/OEMAudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v5, p0, Lcom/samsung/android/speech/OEMAudioTask;->isSubModelBargeInEnable:Z

    iput-object v2, p0, Lcom/samsung/android/speech/OEMAudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/speech/OEMAudioTask;->searchGrammarPathname_sub:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v6, "SUB model is loaded "

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->mCommandType:I

    const/4 v6, 0x7

    if-ne v4, v6, :cond_3

    iput-boolean v5, p0, Lcom/samsung/android/speech/OEMAudioTask;->isCameraBargeIn:Z

    iget-boolean v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMBargeInEnable:Z

    if-eqz v4, :cond_4

    iput-boolean v5, p0, Lcom/samsung/android/speech/OEMAudioTask;->isOEMCameraBargeIn:Z

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/samsung/android/speech/OEMAudioTask;->mCommandType:I

    const/16 v6, 0x9

    if-ne v4, v6, :cond_4

    iput-boolean v5, p0, Lcom/samsung/android/speech/OEMAudioTask;->isCancelBargeIn:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setSamsungFilePath(II)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->wordListPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/speech/OEMAudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->modelPath:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->loadNameList:Ljava/lang/String;

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "OEMAudioTask : stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mStopHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->done:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->readNshorts:I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "OEMAudioTask : stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopBargeInAudioRecord()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->isMakePCM:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.release start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.release end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "rec = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/speech/OEMAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
