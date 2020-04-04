.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;
.super Ljava/lang/Object;
.source "SemSoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionConfig"
.end annotation


# instance fields
.field private final allowMultipleTriggers:Z

.field private final captureRequested:Z

.field private final data:[B

.field instance:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private final keyphrases:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;


# direct methods
.method public constructor <init>(ZZ[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;[B)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    new-array v0, v0, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_1

    aget-object v3, p3, v2

    iget-object v3, v3, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    array-length v3, v3

    new-array v3, v3, [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    move v4, v1

    :goto_1
    aget-object v5, p3, v2

    iget-object v5, v5, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    new-instance v5, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    aget-object v6, p3, v2

    iget-object v6, v6, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;->userId:I

    aget-object v7, p3, v2

    iget-object v7, v7, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;->confidenceLevel:I

    invoke-direct {v5, v6, v7}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;-><init>(II)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    new-instance v4, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    aget-object v5, p3, v2

    iget v5, v5, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->id:I

    aget-object v6, p3, v2

    iget v6, v6, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    aget-object v7, p3, v2

    iget v7, v7, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    invoke-direct {v1, p1, p2, v0, p4}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V

    iput-object v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;->instance:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iput-boolean p1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;->captureRequested:Z

    iput-boolean p2, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    iput-object p3, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;->keyphrases:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;

    iput-object p4, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;->data:[B

    return-void
.end method
