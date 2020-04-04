.class Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;
.super Ljava/lang/Object;
.source "SemSoundTriggerModule.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;-><init>(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;

.field final synthetic val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->this$0:Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;

    iput-object p2, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    iget-object v2, v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    array-length v3, v2

    new-array v3, v3, [Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    aget-object v6, v2, v5

    iget-object v6, v6, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v6, v6

    new-array v6, v6, [Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    move v7, v4

    :goto_1
    aget-object v8, v2, v5

    iget-object v8, v8, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v8, v8

    if-ge v7, v8, :cond_0

    new-instance v8, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    aget-object v9, v2, v5

    iget-object v9, v9, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    aget-object v9, v9, v7

    iget v9, v9, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    aget-object v10, v2, v5

    iget-object v10, v10, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    aget-object v10, v10, v7

    iget v10, v10, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    invoke-direct {v8, v9, v10}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;-><init>(II)V

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    new-instance v7, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;

    aget-object v8, v2, v5

    iget v8, v8, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    aget-object v9, v2, v5

    iget v9, v9, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    aget-object v10, v2, v5

    iget v10, v10, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    invoke-direct {v7, v8, v9, v10, v6}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;)V

    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v15, v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    new-instance v14, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionEvent;

    iget v5, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    iget v6, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    iget-boolean v7, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    iget v8, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    iget v9, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    iget v10, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    iget-boolean v11, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    iget-object v12, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    iget-object v13, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    move-object v4, v14

    move-object/from16 v16, v2

    move-object v2, v14

    move-object v14, v3

    invoke-direct/range {v4 .. v14}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;)V

    invoke-interface {v15, v2}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onRecognition(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;)V

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    new-instance v13, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;

    iget v4, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    iget v5, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    iget-boolean v6, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    iget v7, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    iget v8, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    iget v9, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    iget-boolean v10, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    iget-object v11, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    iget-object v12, v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B)V

    invoke-interface {v2, v13}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onRecognition(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;)V

    :goto_2
    return-void
.end method

.method public onServiceDied()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    invoke-interface {v0}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onServiceDied()V

    return-void
.end method

.method public onServiceStateChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onServiceStateChange(I)V

    return-void
.end method

.method public onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .locals 0

    return-void
.end method
